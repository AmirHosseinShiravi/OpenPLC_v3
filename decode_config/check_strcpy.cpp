#include <iostream>
#include <string.h>
using namespace std;

int main(){
    char source[] = "Hello, world!";
    char destination[50];
    strcpy(destination,source);
    cout << destination << endl;
    return 0;
}