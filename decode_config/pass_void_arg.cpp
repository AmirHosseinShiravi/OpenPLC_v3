#include <iostream>


int main(){

    void *arg;
    int *instances_index;
    instances_index = (int*) malloc(3 * sizeof(int));
    int instance_index_int;
    instances_index[0] = 1;
    arg = (void*)&instances_index[0];
    instance_index_int = *(int*)arg;
    std::cout << instances_index[0] << std::endl;
    std::cout << instance_index_int << std::endl;
    return 0;
}