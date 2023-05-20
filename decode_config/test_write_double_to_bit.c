#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <bits/types.h>

int main(){
    __uint8_t *tempBuff;
    tempBuff = (__uint8_t *)malloc(10);
    double amir = 11;
    int* reza;
    reza = (int *)malloc(7);
    reza[0] = amir;
    // printf("salllllam   %d", reza[0]);
    printf("%ld", sizeof(tempBuff));
}
