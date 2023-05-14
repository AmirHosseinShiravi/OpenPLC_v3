#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <sqlite3.h>

// Define a struct to hold information about each instance of the driver
typedef struct {
    int *instance_index;
    sqlite3 *db;            // Pointer to the SQLite3 database instance
} sqlite_instance_t;

// Function to handle each SQLite3 instance
void* sqlite_handler(void *arg) {
    sqlite_instance_t *instance = (sqlite_instance_t*) arg;

    // Insert some sample data into the database
    const char* sql = "INSERT INTO scores (student_id, score) VALUES (1, 85), (2, 92), (3, 77)";
    char* errmsg = NULL;
    int rc = sqlite3_exec(instance->db, sql, NULL, NULL, &errmsg);
    if (rc != SQLITE_OK) {
        fprintf(stderr, "Error inserting data into database: %s\n", errmsg);
        sqlite3_free(errmsg);
        pthread_exit(NULL);
    }

    // Query the database for the list of students and their scores
    sql = "SELECT * FROM scores";
    sqlite3_stmt *stmt;
    rc = sqlite3_prepare_v2(instance->db, sql, -1, &stmt, NULL);
    if (rc != SQLITE_OK) {
        fprintf(stderr, "Error preparing SQL statement: %s\n", sqlite3_errmsg(instance->db));
        pthread_exit(NULL);
    }
    int id, score;
    while (sqlite3_step(stmt) == SQLITE_ROW) {
        id = sqlite3_column_int(stmt, 0);
        score = sqlite3_column_int(stmt, 1);
        printf("Student %d scored %d\n", id, score);
    }
    sqlite3_finalize(stmt);

    // Exit the thread
    pthread_exit(NULL);
}

int main() {
    int num_instances = 5;
    pthread_t threads[num_instances];
    sqlite_instance_t instances[num_instances];

    // Initialize each instance of the driver
    for (int i = 0; i < num_instances; i++) {
        // Allocate memory for the instance
        instances[i].db = malloc(sizeof(sqlite3 *));
        instances[i].instance_index = i;

        // Create a filename for the database
        char filename[50];
        sprintf(filename, "scores%d.db", i);

        // Open the database connection
        int rc = sqlite3_open(filename, &instances[i].db);
        if (rc != SQLITE_OK) {
            fprintf(stderr, "Error opening database: %s\n", sqlite3_errmsg(instances[i].db));
            return 1;
        }

        // Create the scores table if it doesn't already exist
        const char* sql = "CREATE TABLE IF NOT EXISTS scores (student_id INTEGER PRIMARY KEY, score INTEGER)";
        char* errmsg = NULL;
        rc = sqlite3_exec(instances[i].db, sql, NULL, NULL, &errmsg);
        if (rc != SQLITE_OK) {
            fprintf(stderr, "Error creating table in database: %s\n", errmsg);
            sqlite3_free(errmsg);
            return 1;
        }

        // Create a thread to handle this instance of the driver
        rc = pthread_create(&threads[i], NULL, sqlite_handler, (void*) &instances[i]);
        if (rc != 0) {
            fprintf(stderr, "Error creating thread: %d\n", rc);
            return 1;
        }
    }

    // Wait for all threads to finish
    for (int i = 0; i < num_instances; i++) {
        pthread_join(threads[i], NULL);
    }

    // Close each database connection and free the memory used by each instance
    for (int i = 0; i < num_instances; i++) {
        sqlite3_close(instances[i].db);
        free(instances[i].db);
    }

    return 0;
}
