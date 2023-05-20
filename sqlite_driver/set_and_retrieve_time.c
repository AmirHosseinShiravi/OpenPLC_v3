#include <stdio.h>
#include <stdlib.h>
#include <sqlite3.h>
#include <time.h>

int main() {
    sqlite3 *db;
    char *err_msg = 0;
    int rc = sqlite3_open("test.db", &db);

    if (rc != SQLITE_OK) {
        fprintf(stderr, "Cannot open database: %s\n", sqlite3_errmsg(db));
        sqlite3_close(db);
        return 1;
    }

    // Create the timestamps table
    char *sql = "CREATE TABLE IF NOT EXISTS timestamps ("
                "id INTEGER PRIMARY KEY AUTOINCREMENT,"
                "timestamp INTEGER NOT NULL);";
    rc = sqlite3_exec(db, sql, 0, 0, &err_msg);

    if (rc != SQLITE_OK ) {
        fprintf(stderr, "Failed to create table: %s\n", err_msg);
        sqlite3_free(err_msg);
        sqlite3_close(db);
        return 1;
    }

    // Get the current Unix system time
    time_t now = time(NULL);
    int timestamp = (int) now;

    // Insert the timestamp into the database
    sql = "INSERT INTO timestamps (timestamp) VALUES (?);";
    sqlite3_stmt *stmt;
    rc = sqlite3_prepare_v2(db, sql, -1, &stmt, NULL);

    if (rc != SQLITE_OK) {
        fprintf(stderr, "Failed to prepare statement: %s\n", sqlite3_errmsg(db));
        sqlite3_close(db);
        return 1;
    }

    rc = sqlite3_bind_int(stmt, 1, timestamp);

    if (rc != SQLITE_OK) {
        fprintf(stderr, "Failed to bind parameter: %s\n", sqlite3_errmsg(db));
        sqlite3_finalize(stmt);
        sqlite3_close(db);
        return 1;
    }

    rc = sqlite3_step(stmt);

    if (rc != SQLITE_DONE) {
        fprintf(stderr, "Failed to execute statement: %s\n", sqlite3_errmsg(db));
        sqlite3_finalize(stmt);
        sqlite3_close(db);
        return 1;
    }

    // Finalize the statement
    sqlite3_finalize(stmt);

    // Retrieve the timestamp from the database and display it on the console
    sql = "SELECT timestamp FROM timestamps ORDER BY id DESC LIMIT 1;";
    rc = sqlite3_prepare_v2(db, sql, -1, &stmt, NULL);

    if (rc != SQLITE_OK) {
        fprintf(stderr, "Failed to prepare statement: %s\n", sqlite3_errmsg(db));
        sqlite3_close(db);
        return 1;
    }

    rc = sqlite3_step(stmt);

    if (rc == SQLITE_ROW) {
        time_t timestamp = (time_t) sqlite3_column_int(stmt, 0);
        char date_str[80];
        strftime(date_str, sizeof(date_str), "%Y-%m-%d %H:%M:%S", localtime(&timestamp));
        printf("Timestamp: %s\n", date_str);
    }

    // Finalize the statement and close the database
    sqlite3_finalize(stmt);
    sqlite3_close(db);

    return 0;
}
