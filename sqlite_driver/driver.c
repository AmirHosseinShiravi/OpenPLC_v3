#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sqlite3.h>
#include <iec_types.h>


void init_driver_tags(SqlTagStruct *s)
{
    // determine driver tag number from .cfg file
    // allocate proper memory to struct member
    int TagsNum = 1024;
    int MAX_STR_LEN = 128;

    s->TagValue = (IEC_LREAL *)malloc(TagsNum * sizeof(IEC_LREAL));
    s->TagOldValue = (IEC_LREAL *)malloc(TagsNum * sizeof(IEC_LREAL));
    s->TagName = (char **)malloc(TagsNum * sizeof(char *));
    for (int i = 0; i < TagsNum; i++)
        s->myArray[i] = (char *)malloc((MAX_STR_LEN + 1) * sizeof(char));
    s->TagDT = (IEC_DT *)malloc(TagsNum * sizeof(IEC_DT));
    s->TagType = (tag_types *)malloc(TagsNum * sizeof(tag_types));
    s->TagStatus = (IEC_USINT *)malloc(TagsNum * sizeof(IEC_USINT));
    s->TagOldStatus = (IEC_USINT *)malloc(TagsNum * sizeof(IEC_USINT));
    // s->TagGroup = (Tag_Group*)malloc(TagsNum * sizeof(Tag_Group));
    s->TagClass = (int *)malloc(TagsNum * sizeof(int));
    s->TagAddress = (int *)malloc(TagsNum * sizeof(int));

    //  نمیدونم آیا این کار درست است یا خیر
    IEC_TIMESPEC DT_temp;
    DT_temp.tv_sec = 0;
    DT_temp.tv_nsec = 0;
    int value_temp = 0;
    char* char_temp = (char*)malloc((MAX_STR_LEN + 1) * sizeof(char));
    char_temp[0] = '\0';
    for (int i=0; i < TagsNum; i++){         
        s->TagValue[i] = (IEC_LREAL)&value_temp;
        s->TagOldValue[i] = (IEC_LREAL)&value_temp;
        strncpy(s->TagName[i], char_temp, MAX_STR_LEN);
        s->TagDT[i] = DT_temp;
        s->TagStatus[i] = (IEC_USINT)value_temp;
        s->TagOldStatus[i] = (IEC_USINT)value_temp;
    }
}

int insert_to_database(sqlite3 *db, char *TagName, IEC_LREAL *TagValue, IEC_DT *TagDT, IEC_USINT *TagStatus)
{
    sqlite3_stmt *stmt;
    const char *sql = "INSERT INTO TagStore (TageName, TagDT, TagValue, TagStatus) VALUES (?, ?, ?, ?);";
    int rc = sqlite3_prepare_v2(db, sql, -1, &stmt, NULL);
    if (rc != SQLITE_OK)
    {
        fprintf(stderr, "Cannot prepare statement: %s\n", sqlite3_errmsg(db));
        return 1;
    }
    sqlite3_bind_text(stmt, 1, TagName, -1, SQLITE_TRANSIENT);
    sqlite3_bind_int64(stmt, 2, TagValue);
    sqlite3_bind_int64(stmt, 3, TagDT);
    sqlite3_bind_int64(stmt, 4, TagStatus);
    rc = sqlite3_step(stmt);
    if (rc != SQLITE_DONE)
    {
        fprintf(stderr, "Cannot execute statement: %s\n", sqlite3_errmsg(db));
        sqlite3_finalize(stmt);
        return 1;
    }
    sqlite3_finalize(stmt);
    return 0;
}

int create_table(sqlite3 *db, *err_msg)
{

    char *sql = "CREATE TABLE IF NOT EXISTS TagStore ("
                "id INTEGER PRIMARY KEY AUTOINCREMENT,"
                "TagName TEXT NOT NULL,"
                "TagDT INTEGER NOT NULL,"
                "TagValue REAL NOT NULL,"
                "TagStatus INTEGER NOT NULL);";

    rc = sqlite3_exec(db, sql, 0, 0, &err_msg);

    // if (rc != SQLITE_OK)
    // {
    //     fprintf(stderr, "Failed to create table: %s\n", err_msg);
    //     sqlite3_free(err_msg);
    //     sqlite3_close(db);
    //     return 1;
    // }
}

void deinit_driver_tags()
{

    // Don't forget to free the memory!
    for (int i = 0; i < ; i++)
    {
        free(s.myArray[i]);
    }
    free(s.myArray);

    return 0;
}

void sqlite_driver()
{

    int RecordMode[] = {0, 1, 2};
    unsigned long long CycleInterval = 10000000000ULL;  /*ns  10Sec */
    unsigned long long PhysicalScanTime = 100000000ULL; // ns
    unsigned long long time_temp = 0;
    int DriverIndex; // position of driver in .cfg file
    int DriverInstance;
    int TagsNum = 1024;
    bool Running = 1;
    int StopRecording_index;
    int RecordByRequest_index;
    int DatabaseSizeMB_index;
    // create database
    char database_name[50];
    sprintf(database_name, "Instance_%d_database.db", DriverInstance);

    sqlite3 *db;
    char *err_msg = 0;
    int rc = sqlite3_open(database_name, &db);
    if (rc != SQLITE_OK)
    {
        fprintf(stderr, "Cannot open database: %s\n", sqlite3_errmsg(db));
        sqlite3_close(db);
        return 1;
    }

    int db_creation_status = create_table(&db, &err_msg);

    printf("Getting current time\n");
    struct timespec timer_start;
    clock_gettime(CLOCK_MONOTONIC, &timer_start);

    // Get the current Unix system time
    time_t now = time(NULL);

    SqlTagStruct driverTags;
    init_driver_tags(&driverTags);

    for (int i = 0; i < TagsNum; i++)
    {
        if (driverTags.TagType[i] == SYSTEM)
        {
            if (strcmp(driverTags.TagName[i], "StopRecording"))
                StopRecording_index = i;
            else if (strcmp(driverTags.TagName[i], "RecordByRequest"))
                RecordByRequest_index = i;
            else if (strcmp(driverTags.TagName[i], "DatabaseSizeMB"))
                DatabaseSizeMB_index = i;
        }
    }

    while (Running)
    {
        if (driverTags.TagValue[StopRecording_index] == 0)
        {
            switch (RecordMode)
            {

            case 0:
                //  sleep(cycleinterval) then:
                //          wirte_to_database(*driverTages, tag_address = -1 )
                if (time_temp >= CycleInterval)
                {
                    // Do procedure
                    int timestamp = (int)now;
                    // Insert the elements of the structure as separate rows in the database
                    for (size_t i = 0; i < TagsNum; i++)
                    {
                        if (driverTags.TagType[i] != SYSTEM)
                        {
                            driverTags.TagDT[i].tv_sec = timestamp;
                            if (insert_to_database(db, driverTags.TagName[i], driverTags.TagDT[i].tv_sec, driverTags.TagValue[i], driverTags.TagStatus[i]) != 0)
                            {
                                fprintf(stderr, "Error inserting to database\n");
                            }
                        }
                    }
                    time_temp = 0;
                }

            case 1:
                // check all tag values with their old_value
                // if tag_value != old_value:
                // then:
                for (size_t i = 0; i < TagsNum; i++)
                {
                    if (driverTags.TagType[i] != SYSTEM)
                    {
                        if (driverTags.Value[i] != driverTags.OldValue[i])
                        {
                            driverTags.TagDT[i].tv_sec = timestamp;
                            insert_to_database(db, driverTags.TagName[i], driverTags.TagDT[i], driverTags.TagValue[i], driverTags.TagStatus[i]);
                            driverTags.OldValue[i] = driverTags.Value[i];
                        }
                    }
                }

            case 2:
                // check byrequest tag value :
                // if changed from 0 to 1:
                if (driverTags.TagValue[RecordByRequest_index] == 1 ){
                    int timestamp = (int)now;
                    // Insert the elements of the structure as separate rows in the database
                    for (size_t i = 0; i < TagsNum; i++)
                    {
                        if (driverTags.TagType[i] != SYSTEM)
                        {
                            driverTags.TagDT[i].tv_sec = timestamp;
                            if (insert_to_database(db, driverTags.TagName[i], driverTags.TagDT[i].tv_sec, driverTags.TagValue[i], driverTags.TagStatus[i]) != 0)
                            {
                                fprintf(stderr, "Error inserting to database\n");
                            }
                        }
                    }
                }
                //      then:
                //          write to database
                //          wirte_to_database(*driverTages, tag_address = -1 )
            }
        }

        sleep_until(&timer_start, PhysicalScanTime);
        time_temp += PhysicalScanTime;
    }
    sqlite3_close(db);
    deinit_driver_tags(&driverTags);
}

void delete_instance_database(){}

int sqlite_Driver_Master_thread() {
    // read .cfg file and detrmine number of instance

    enum tag_types
    {
        BOOLEAN,
        SINT,
        INT,
        DINT,
        LINT,
        USINT,
        UINT,
        UDINT,
        ULINT,
        REAL,
        LREAL,
        SYSYEM
    };

    struct sqltagstruct
    {
        IEC_LREAL *TagValue;
        IEC_LREAL *TagOldValue;
        char **TagName;
        IEC_DT *TagDT;
        enum tag_types *TagType;
        IEC_USINT *TagStatus;
        IEC_USINT *TagOldStatus;
        int *TagGroup;
        // Tag_Group* TagClass;
        int *TagAddress;
    } SqlTagStruct;

    // Define a struct to hold information about each instance of the driver
    typedef struct {
        int *instance_index;
        sqlite3 *db;            // Pointer to the SQLite3 database instance
    } sqlite_instance_t;

    int num_instances = 5;
    pthread_t threads[num_instances];
    sqlite_instance_t instances[num_instances];

    // Initialize each instance of the driver
    for (int i = 0; i < num_instances; i++) {
        // Allocate memory for the instance
        instances[i].db = malloc(sizeof(sqlite3 *));
        instances[i].instance_index = malloc(sizeof(int));
        *(instances[i].instance_index) = i;
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
        char* errmsg = NULL;
        int rc;
        rc = create_table(instances[i].db,&errmsg);        
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
