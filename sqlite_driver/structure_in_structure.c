#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_STR_LEN 100

typedef struct innerStruct
{
    // Define the fields of the inner structure
    int value;
} InnerStruct;

typedef struct myStruct
{
    char** myArray;
    InnerStruct* innerArray;
    int size;
} MyStruct;

void initializeStruct(MyStruct* s, int size)
{
    s->size = size;
    s->myArray = (char**)malloc(size * sizeof(char*));
    s->innerArray = (InnerStruct*)malloc(size * sizeof(InnerStruct));

    for (int i = 0; i < size; i++)
    {
        s->myArray[i] = (char*)malloc((MAX_STR_LEN + 1) * sizeof(char));
        sprintf(s->myArray[i], "String %d", i); // Or any other initialization

        // Initialize the fields of the inner structure for each element
        s->innerArray[i].value = i; // Or any other initialization
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
    
    for (int i = 0; i < size; i++)
    {
        printf("%d\n", s.innerArray[i].value);
    }

    // Don't forget to free the memory!
    for (int i = 0; i < size; i++)
    {
        free(s.myArray[i]);
    }
    free(s.myArray);
    free(s.innerArray);
    
    return 0;
}
