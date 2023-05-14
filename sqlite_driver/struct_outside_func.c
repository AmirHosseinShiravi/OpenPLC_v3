#include <stdio.h>
#include <stdlib.h>

typedef struct myStruct
{
    int* myArray;
} MyStruct;

void initializeStruct(MyStruct* s, int size)
{
    s->myArray = (int*)malloc(size * sizeof(int));
    for (int i = 0; i < size; i++)
    {
        s->myArray[i] = rand() % 100;
    }
}

int main()
{
    MyStruct s;
    int size = 15; // Or any other size
    initializeStruct(&s, size);
    for (int i = 0; i < size; i++)
    {
        printf("%d ", s.myArray[i]);
    }
    printf("\n");
    free(s.myArray); // Don't forget to free the memory!
    return 0;
}