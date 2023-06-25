#include <iostream>
#include <string>


using namespace std;

enum PointClass : uint8_t
{
  /// No event class assignment
  Class0 = 0x1,
  /// Assigned to event class 1
  Class1 = 0x2,
  /// Assigned to event class 2
  Class2 = 0x4,
  /// Assigned to event class 3
  Class3 = 0x8
};

int main()
{
  char reza[100];
    PointClass amir = PointClass::Class1;
    sprintf(reza, "%d", static_cast<uint8_t>(PointClass::Class1));
    cout <<  reza << endl;
    if(static_cast<PointClass>(static_cast<uint8_t>(PointClass::Class1)) == PointClass::Class2)
    {
    cout <<  "amir" << endl;

    }
    return 0;
}