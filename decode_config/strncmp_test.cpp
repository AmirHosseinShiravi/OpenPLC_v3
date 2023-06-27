#include <iostream>
#include <cstring>


using namespace std;

int main()
{
    char amir[20];
    strcpy(amir , "Value-Status");
    int ret;
    ret = strncmp(amir, "Value-Status", 20);
    cout << ret << endl;

    return 0;
}