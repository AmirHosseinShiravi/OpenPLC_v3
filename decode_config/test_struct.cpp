#include <iostream>

using namespace std;

// struct last_command_buffer {
//     enum PointType {
//         ControlRelayOutputBlock,
//         AnalogOutput
//     };

//     enum AnalogType {
//         AnalogOutputInt16,
//         AnalogOutputInt32,
//         AnalogOutputFloat32,
//         AnalogOutputDouble64
//     };

//     union Data {
//         struct {
//             int count;
//             uint32_t onTime;
//             uint32_t offTime;
//         } last_selected_ControlRelayOutputBlock;

//         struct {
//             double value;
//         } last_selected_AnalogOutput;
//     };

//     Data data;
    
//     PointType point_type;
//     uint16_t index;
// } last_command_buffer;

// int main() {

//     last_command_buffer.index = 10;
//     last_command_buffer.data.last_selected_ControlRelayOutputBlock.count = 30;
//     cout << last_command_buffer.index << endl;
//     cout << last_command_buffer.data.last_selected_ControlRelayOutputBlock.count << endl; // Use static_cast to print uint8_t as int

//     return 0;
// }




class ControlRelayOutputBlock {
public:
    ControlRelayOutputBlock(int count = 1, uint32_t onTime = 100, uint32_t offTime = 100)
        : count(count), onTimeMS(onTime), offTimeMS(offTime) {
        // Constructor implementation
    }

    ControlRelayOutputBlock(int rawCode, int count = 1, uint32_t onTime = 100, uint32_t offTime = 100)
        : rawCode(rawCode), count(count), onTimeMS(onTime), offTimeMS(offTime) {
        // Constructor implementation
    }

    int rawCode;
    int count;
    uint32_t onTimeMS;
    uint32_t offTimeMS;
};

struct LastCommandBuffer {
    enum PointType {
        ControlRelayOutputBlockk,
        AnalogOutput
    };

    enum AnalogType {
        AnalogOutputInt16,
        AnalogOutputInt32,
        AnalogOutputFloat32,
        AnalogOutputDouble64
    };

    ControlRelayOutputBlock lastSelectedControlRelayOutputBlock;

    AnalogType analogType;
    PointType pointType;
    uint16_t index;
};

int main() {
    LastCommandBuffer amir;
    amir.lastSelectedControlRelayOutputBlock.count = 10;
    std::cout << amir.lastSelectedControlRelayOutputBlock.count << std::endl;
    return 0;
}
