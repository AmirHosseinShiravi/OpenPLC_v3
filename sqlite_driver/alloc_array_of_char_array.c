#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#define MAX_STR_LEN 100



typedef struct myStruct
{
    char** myArray;
} MyStruct;



void initializeStruct(MyStruct* s, int size)
{
    s->myArray = (char**)malloc(size * sizeof(char*));
    for (int i = 0; i < size; i++)
    {
        s->myArray[i] = (char*)malloc((MAX_STR_LEN + 1) * sizeof(char));
        sprintf(s->myArray[i], "String %d", i); // Or any other initialization
    }


}

int main()
{
    MyStruct s;
    int size = 5; // Or any other size
    initializeStruct(&s, size);
    for (int i = 0; i < size; i++)
    {
        printf("%s\n", s.myArray[i]);

    }
    
    // Don't forget to free the memory!
    for (int i = 0; i < size; i++)
    {
        free(s.myArray[i]);
    }
    free(s.myArray);
    
    return 0;
}