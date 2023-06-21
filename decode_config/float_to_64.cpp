#include <iostream>

using namespace std;

int main()
{
    float amir = 12.23;
    uint64_t reza = *(uint64_t*)(&amir);
    float mamad = *(float*)(&reza);
    cout << amir << "\n" <<reza << "\n" << mamad << endl;

    return 0;
}