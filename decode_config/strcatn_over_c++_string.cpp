#include <string>
#include <cstring>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

int main()
{
    int instance_number = 1;
    char dnp_id[100];
    // char dnp_id[30] = "DNP3_RS485_Server::instance_";
    char instance_char[1];
    // snprintf(instance_char, sizeof(instance_char) , "%d",instance_number);

    // snprintf(buffer, sizeof(buffer) , "%s%d", dnp_id, instance_number);
    snprintf(dnp_id, sizeof(dnp_id) , "instance %d :: DNP3_TCPServer", instance_number);
    cout << dnp_id << endl;

    // strcat(dnp_id, instance_char);
    // cout << dnp_id << endl;

    return 0;
}