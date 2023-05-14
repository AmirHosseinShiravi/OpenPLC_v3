#include <stdio.h>


int main(){
    char database_name[50];
    sprintf(database_name, "Instance_%d_database.db", 1);
    // Do something with the database_name variable here
    printf("%s", database_name);
    return 0;
}
