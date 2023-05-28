//-----------------------------------------------------------------------------
// Copyright 2015 Thiago Alves
//
// Based on the LDmicro software by Jonathan Westhues
// This file is part of the OpenPLC Software Stack.
//
// OpenPLC is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// OpenPLC is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with OpenPLC.  If not, see <http://www.gnu.org/licenses/>.
//------
//
// This file is responsible for parse and discovery of slave devices by parsing
// the mbconfig.cfg file. This code also updates OpenPLC internal buffers with
// the data queried from the slave devices.
// Thiago Alves, Jul 2018
//-----------------------------------------------------------------------------

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
// #include <pthread.h>

#include <modbus.h>
#include <errno.h>
#include <string.h>
#include <pthread.h>

#include <iostream>
#include <fstream>
#include <string>




#include "ladder.h"


using namespace std;

//-----------------------------------------------------------------------------
// Thread to poll each slave device
//-----------------------------------------------------------------------------
void querySlaveDevices(int arg)
{
    int instance_index;
    // instance_index = *(int*)arg;
    instance_index = arg;
    unsigned char log_msg[1000];
    bool amir = false;
    RES0__RIO_P1VAR1_TAG0.value = 0;

    while (run_openplc)
    {
        if(amir){
            RES0__RIO_P1VAR1_TAG0.value = +100.123;
            amir = false;
        }
        else {
            RES0__RIO_P1VAR1_TAG0.value = -100.123;
            amir = true;
        }
        
        sprintf((char *)log_msg, "RES0__RIO_P1VAR1_TAG0 -> value=  %Lf \n",Modbus_Master_Driver_Instances[0].Tags[0].TagValue);
        log(log_msg);
        
        uint16_t bool_input_index = 0;
        uint16_t bool_output_index = 0;
        uint16_t int_input_index = 0;
        uint16_t int_output_index = 0;

        for (int i = 0; i < Modbus_Master_Driver_Instances[instance_index].number_of_modbus_blocks; i++)
        {

            //Check if there is a connected RTU device using the same port
            bool found_sharing = false;
            bool rtu_port_connected = false;
            if (!strcmp(Modbus_Master_Driver_Instances[i].Options.PhysicalLayer, "RS232") || !strcmp(Modbus_Master_Driver_Instances[i].Options.PhysicalLayer, "RS485"))
            {
                for (int a = 0; a < Modbus_Master_Driver_Instances[instance_index].number_of_modbus_blocks; a++)
                {
                    if (a != i && !strcmp(Modbus_Master_Driver_Instances[instance_index].Options.COMPort, Modbus_Master_Driver_Instances[instance_index].Options.COMPort)) // allways have same COMPort
                    {
                        found_sharing = true;
                        if (Modbus_Master_Driver_Instances[instance_index].Blocks[a].isConnected)
                        {
                            rtu_port_connected = true;
                        }
                    }
                }
                if (found_sharing)
                {
                    //Must reset mb context to current device's slave id
                    modbus_set_slave(Modbus_Master_Driver_Instances[instance_index].Blocks[i].mb_ctx, Modbus_Master_Driver_Instances[instance_index].Blocks[i].SlaveID);
                }
            }

            //Verify if device is connected
            if (!Modbus_Master_Driver_Instances[instance_index].Blocks[i].isConnected && !rtu_port_connected)
            {
                sprintf((char *)log_msg, "Device %s-%s is disconnected. Attempting to reconnect...\n", Modbus_Master_Driver_Instances[instance_index].Blocks[i].DeviceName,
                                                                                               Modbus_Master_Driver_Instances[instance_index].Blocks[i].Name);
                log(log_msg);

                sprintf((char *)log_msg, "Attempting to reconnect: %s:%d \n", Modbus_Master_Driver_Instances[instance_index].Blocks[i].IP,
                                                                                               Modbus_Master_Driver_Instances[instance_index].Blocks[i].SocketPort);
                log(log_msg);

                if (modbus_connect(Modbus_Master_Driver_Instances[instance_index].Blocks[i].mb_ctx) == -1)
                {
                    
                    sprintf((char *)log_msg, "Connection failed on MB device %s-%s: %s\n",Modbus_Master_Driver_Instances[instance_index].Blocks[i].DeviceName,
                                                                                  Modbus_Master_Driver_Instances[instance_index].Blocks[i].Name, modbus_strerror(errno));
                    log(log_msg);
                    
                    // if (special_functions[2] != NULL) *special_functions[2]++;
                    
                    // Because this device is not connected, we skip those input registers
                    // bool_input_index += (mb_devices[i].discrete_inputs.num_regs);
                    // int_input_index += (mb_devices[i].input_registers.num_regs);
                    // int_input_index += (mb_devices[i].holding_read_registers.num_regs);
                    // bool_output_index += (mb_devices[i].coils.num_regs);
                    // int_output_index += (mb_devices[i].holding_registers.num_regs);
                }
                else
                {
                    
                    sprintf((char *)log_msg, "Connected to MB device %s-%s\n",Modbus_Master_Driver_Instances[instance_index].Blocks[i].DeviceName, Modbus_Master_Driver_Instances[instance_index].Blocks[i].Name);
                    log(log_msg);
                    
                    

                    Modbus_Master_Driver_Instances[instance_index].Blocks[i].isConnected = true;
                    
                }
            }
            if (Modbus_Master_Driver_Instances[instance_index].Blocks[i].isConnected || rtu_port_connected)
            {

                struct timespec ts;
                ts.tv_sec = 0;
                if (!strcmp(Modbus_Master_Driver_Instances[instance_index].Options.PhysicalLayer, "RS232") || !strcmp(Modbus_Master_Driver_Instances[i].Options.PhysicalLayer, "RS485"))
                {
                    
                    ts.tv_nsec = (1000000000LL * 28) / Modbus_Master_Driver_Instances[instance_index].Options.BaudRate;
                }
                else
                {
                    ts.tv_nsec = 0;                    
                }

                //Read discrete inputs
                if (Modbus_Master_Driver_Instances[instance_index].Blocks[i].Count != 0 && Modbus_Master_Driver_Instances[instance_index].Blocks[i].Type == 2)
                {
                    int lastTagIndex = Modbus_Master_Driver_Instances[instance_index].Blocks[i].LastTagIndex;
                    int start_address = Modbus_Master_Driver_Instances[instance_index].Blocks[i].StartAdd;
                    // sleepms(mb_devices[i].rtu_tx_pause);
                    uint8_t *tempBuff;
                    tempBuff = (uint8_t *)malloc(Modbus_Master_Driver_Instances[instance_index].Blocks[i].Count);
                    nanosleep(&ts, NULL); 
                    int return_val = modbus_read_input_bits(Modbus_Master_Driver_Instances[instance_index].Blocks[i].mb_ctx,
                                                            Modbus_Master_Driver_Instances[instance_index].Blocks[i].StartAdd,
                                                            Modbus_Master_Driver_Instances[instance_index].Blocks[i].Count, tempBuff);
                    if (return_val == -1)
                    {
                        if (strcmp(Modbus_Master_Driver_Instances[i].Options.PhysicalLayer, "TCP") == 0)
                        {
                            modbus_close(Modbus_Master_Driver_Instances[instance_index].Blocks[i].mb_ctx);
                            Modbus_Master_Driver_Instances[instance_index].Blocks[i].isConnected = false;
                        }
                        
                        sprintf((char *)log_msg, "Modbus Read Discrete Input Registers failed on MB device %s: %s\n",  Modbus_Master_Driver_Instances[instance_index].Blocks[i].DeviceName, modbus_strerror(errno));
                        log(log_msg);
                        // bool_input_index += (mb_devices[i].discrete_inputs.num_regs);
                        // if (special_functions[2] != NULL) *special_functions[2]++;
                        
                        // block error tag
                        Modbus_Master_Driver_Instances[instance_index].Tags[lastTagIndex - 1].TagValue++;
                    }
                    else
                    {

                        pthread_mutex_lock(&bufferLock);
                        for (int j = 0; j < return_val; j++)
                        {
                            Modbus_Master_Driver_Instances[instance_index].Tags[start_address + j].TagValue = tempBuff[j];
                            // bool_input_index++;
                        }
                        pthread_mutex_unlock(&bufferLock);
                    }

                    free(tempBuff);
                }

                //Write coils
                if (Modbus_Master_Driver_Instances[instance_index].Blocks[i].Count != 0 && Modbus_Master_Driver_Instances[instance_index].Blocks[i].Type == 51)
                {
                    int lastTagIndex = Modbus_Master_Driver_Instances[instance_index].Blocks[i].LastTagIndex;
                    int start_address = Modbus_Master_Driver_Instances[instance_index].Blocks[i].StartAdd;
                    int count = Modbus_Master_Driver_Instances[instance_index].Blocks[i].Count;
                    // sleepms(mb_devices[i].rtu_tx_pause);
                    uint8_t *tempBuff;
                    tempBuff = (uint8_t *)malloc(Modbus_Master_Driver_Instances[instance_index].Blocks[i].Count);

                    pthread_mutex_lock(&bufferLock);
                    for (int j = 0; j < count; j++)
                    {
                        tempBuff[j] = Modbus_Master_Driver_Instances[instance_index].Tags[start_address + j].TagValue;
                        // bool_output_index++;
                    }
                    pthread_mutex_unlock(&bufferLock);

                    nanosleep(&ts, NULL); 
                    int return_val = modbus_write_bits(Modbus_Master_Driver_Instances[instance_index].Blocks[i].mb_ctx,
                                                       Modbus_Master_Driver_Instances[instance_index].Blocks[i].StartAdd,
                                                       Modbus_Master_Driver_Instances[instance_index].Blocks[i].Count, tempBuff);
                    if (return_val == -1)
                    {
                        if (strcmp(Modbus_Master_Driver_Instances[i].Options.PhysicalLayer, "TCP") == 0)
                        {
                            modbus_close(Modbus_Master_Driver_Instances[instance_index].Blocks[i].mb_ctx);
                            Modbus_Master_Driver_Instances[instance_index].Blocks[i].isConnected = false;
                        }

                        sprintf((char *)log_msg, "Modbus Write Coils failed on MB device %s: %s\n", Modbus_Master_Driver_Instances[instance_index].Blocks[i].DeviceName, modbus_strerror(errno));
                        log(log_msg);
                        // if (special_functions[2] != NULL) *special_functions[2]++;
                        Modbus_Master_Driver_Instances[instance_index].Tags[lastTagIndex - 1].TagValue++;
                    }
                    
                    free(tempBuff);
                }
                
                // Read coils
                if (Modbus_Master_Driver_Instances[instance_index].Blocks[i].Count != 0 && Modbus_Master_Driver_Instances[instance_index].Blocks[i].Type == 1)
                {
                    int lastTagIndex = Modbus_Master_Driver_Instances[instance_index].Blocks[i].LastTagIndex;
                    int start_address = Modbus_Master_Driver_Instances[instance_index].Blocks[i].StartAdd;
                    // sleepms(mb_devices[i].rtu_tx_pause);
                    uint8_t *tempBuff;
                    tempBuff = (uint8_t *)malloc(Modbus_Master_Driver_Instances[instance_index].Blocks[i].Count);
                    nanosleep(&ts, NULL); 
                    int return_val = modbus_read_bits(Modbus_Master_Driver_Instances[instance_index].Blocks[i].mb_ctx,
                                                            Modbus_Master_Driver_Instances[instance_index].Blocks[i].StartAdd,
                                                            Modbus_Master_Driver_Instances[instance_index].Blocks[i].Count, tempBuff);
                    if (return_val == -1)
                    {
                        if (strcmp(Modbus_Master_Driver_Instances[i].Options.PhysicalLayer, "TCP") == 0)
                        {
                            modbus_close(Modbus_Master_Driver_Instances[instance_index].Blocks[i].mb_ctx);
                            Modbus_Master_Driver_Instances[instance_index].Blocks[i].isConnected = false;
                        }
                        
                        sprintf((char *)log_msg, "Modbus Read coils failed on MB device %s: %s\n",  Modbus_Master_Driver_Instances[instance_index].Blocks[i].DeviceName, modbus_strerror(errno));
                        log(log_msg);
                        // bool_input_index += (mb_devices[i].discrete_inputs.num_regs);
                        // if (special_functions[2] != NULL) *special_functions[2]++;
                        
                        // block error tag
                        Modbus_Master_Driver_Instances[instance_index].Tags[lastTagIndex - 1].TagValue++;
                    }
                    else
                    {

                        pthread_mutex_lock(&bufferLock);
                        for (int j = 0; j < return_val; j++)
                        {
                            Modbus_Master_Driver_Instances[instance_index].Tags[start_address + j].TagValue = tempBuff[j];
                            // bool_input_index++;
                        }
                        pthread_mutex_unlock(&bufferLock);
                    }

                    free(tempBuff);
                }

                //Read input registers
                if (Modbus_Master_Driver_Instances[instance_index].Blocks[i].Count != 0 && Modbus_Master_Driver_Instances[instance_index].Blocks[i].Type >= 8 && \
                                                                                           Modbus_Master_Driver_Instances[instance_index].Blocks[i].Type <= 12   )
                {
                    
                    int lastTagIndex = Modbus_Master_Driver_Instances[instance_index].Blocks[i].LastTagIndex;
                    int start_address = Modbus_Master_Driver_Instances[instance_index].Blocks[i].StartAdd;
                    int count = Modbus_Master_Driver_Instances[instance_index].Blocks[i].Count;
                    bool endian_type = Modbus_Master_Driver_Instances[instance_index].Options.ByteFormat; // 0==false: little-endian | 1==true: big-endian
                    int number_of_regs;
                    
                    switch (Modbus_Master_Driver_Instances[instance_index].Blocks[i].Type){
                        case 8:
                            number_of_regs = count;
                            break;
                        case 9:
                            number_of_regs = 2 * count;
                            break;
                        case 10:
                            number_of_regs = 2 * count;
                            break;
                        case 11:
                            number_of_regs = 2 * count;
                            break;
                        case 12:
                            number_of_regs = 2 * count;
                            break;
                        default:
                            break;
                    }
                    // sleepms(mb_devices[i].rtu_tx_pause);
                    uint16_t *tempBuff;
                    tempBuff = (uint16_t *)malloc(2 * number_of_regs);
                    nanosleep(&ts, NULL); 
                    
                    int return_val = modbus_read_input_registers(Modbus_Master_Driver_Instances[instance_index].Blocks[i].mb_ctx,
                                                                 Modbus_Master_Driver_Instances[instance_index].Blocks[i].StartAdd, number_of_regs, tempBuff);
                                                                 
                    if (return_val == -1)
                    {
                        
                        if (strcmp(Modbus_Master_Driver_Instances[i].Options.PhysicalLayer, "TCP") == 0)
                        {
                            modbus_close(Modbus_Master_Driver_Instances[instance_index].Blocks[i].mb_ctx);
                            
                            Modbus_Master_Driver_Instances[instance_index].Blocks[i].isConnected = false;
                        }
                        
                        sprintf((char *)log_msg, "Modbus Read Input Register failed on MB device %s: %s\n", Modbus_Master_Driver_Instances[instance_index].Blocks[i].DeviceName, modbus_strerror(errno));
                        log(log_msg);
                        // if (special_functions[2] != NULL) *special_functions[2]++;
                        
                        Modbus_Master_Driver_Instances[instance_index].Tags[lastTagIndex - 1].TagValue++;
                        
                    }
                    else
                    {

                        pthread_mutex_lock(&bufferLock);
                        int j = 0;
                        int tag_index = 0;
                        uint32_t temp;
                        // sprintf((char *)log_msg, "#############################################\n");
                        // log(log_msg);     
                        
                        while(j < return_val)
                        {
                            switch (Modbus_Master_Driver_Instances[instance_index].Tags[start_address + tag_index].Type)
                            {
                            case 8:
                                
                                Modbus_Master_Driver_Instances[instance_index].Tags[start_address + tag_index].TagValue = tempBuff[j];
                                // sprintf((char *)log_msg, "instance:: %d :: address:: %d :: RES0__RIO_P1VAR1_TAG%d -> value=  %Lf \n", instance_index, start_address + j, j, Modbus_Master_Driver_Instances[instance_index].Tags[start_address + tag_index].TagValue);
                                // log(log_msg);
                                j += 1;
                                break;

                            case 9: // 32-bit FP
                                temp = 0;

                                if(endian_type == 1){ // big-endian
                                    temp = (tempBuff[j] << 16) | tempBuff[j + 1];
                                }
                                else{ // little-endian
                                    temp = (tempBuff[j + 1] << 16) | tempBuff[j];
                                }
                                Modbus_Master_Driver_Instances[instance_index].Tags[start_address + tag_index].TagValue = *(float *)&(temp);
                                j += 2;
                                break;

                            case 10: // 32-bit long
                                temp = 0;
                                if(endian_type == 1){ // big-endian
                                    temp = (tempBuff[j] << 16) | tempBuff[j + 1];
                                }
                                else{ // little-endian
                                    temp = (tempBuff[j + 1] << 16) | tempBuff[j];
                                }
                                Modbus_Master_Driver_Instances[instance_index].Tags[start_address + tag_index].TagValue = temp;
                                j += 2;
                                break;

                            case 11: // 32-bit swap FP
                                temp = 0;

                                if(endian_type == 1){ // big-endian swap
                                    temp = (tempBuff[j + 1] << 16) | tempBuff[j];
                                }
                                else{ // little-endian swap
                                    temp = (tempBuff[j] << 16) | tempBuff[j + 1];
                                }
                                Modbus_Master_Driver_Instances[instance_index].Tags[start_address + tag_index].TagValue = *(float *)&(temp);
                                j += 2;
                                break;
                            case 12: // 32-bit swap long
                                temp = 0;

                                if(endian_type == 1){ // big-endian swap
                                    temp = ((tempBuff[j + 1] << 16) | tempBuff[j]);
                                }
                                else{ // little-endian swap
                                    temp = ((tempBuff[j] << 16) | tempBuff[j + 1]);
                                }
                                Modbus_Master_Driver_Instances[instance_index].Tags[start_address + tag_index].TagValue = temp;
                                j += 2;
                                break;
                            default:
                                break;
                            }
                            
                            tag_index++;
                        }
                        pthread_mutex_unlock(&bufferLock);
                    }

                    free(tempBuff);
                }

                //Read holding registers
                if (Modbus_Master_Driver_Instances[instance_index].Blocks[i].Count != 0 && Modbus_Master_Driver_Instances[instance_index].Blocks[i].Type >= 3 && \
                                                                                           Modbus_Master_Driver_Instances[instance_index].Blocks[i].Type <= 7   )
                {
                    int lastTagIndex = Modbus_Master_Driver_Instances[instance_index].Blocks[i].LastTagIndex;
                    int start_address = Modbus_Master_Driver_Instances[instance_index].Blocks[i].StartAdd;
                    int count = Modbus_Master_Driver_Instances[instance_index].Blocks[i].Count;
                    bool endian_type = Modbus_Master_Driver_Instances[instance_index].Options.ByteFormat; // 0==false: little-endian | 1==true: big-endian
                    int number_of_regs;
                    
                    switch (Modbus_Master_Driver_Instances[instance_index].Blocks[i].Type){
                        case 3:
                            number_of_regs = count;
                            break;
                        case 4:
                            number_of_regs = 2 * count;
                            break;
                        case 5:
                            number_of_regs = 2 * count;
                            break;
                        case 6:
                            number_of_regs = 2 * count;
                            break;
                        case 7:
                            number_of_regs = 2 * count;
                            break;
                        default:
                            break;
                    }
                    // sleepms(mb_devices[i].rtu_tx_pause);
                    uint16_t *tempBuff;
                    tempBuff = (uint16_t *)malloc(2* number_of_regs);
                    nanosleep(&ts, NULL); 
                    int return_val = modbus_read_registers(Modbus_Master_Driver_Instances[instance_index].Blocks[i].mb_ctx,
                                                           Modbus_Master_Driver_Instances[instance_index].Blocks[i].StartAdd, number_of_regs, tempBuff);
                    if (return_val == -1)
                    {
                        if (strcmp(Modbus_Master_Driver_Instances[i].Options.PhysicalLayer, "TCP") == 0)
                        {
                            modbus_close(Modbus_Master_Driver_Instances[instance_index].Blocks[i].mb_ctx);
                            Modbus_Master_Driver_Instances[instance_index].Blocks[i].isConnected = false;
                        }
                        
                        sprintf((char *)log_msg, "Modbus Read Holding Registers failed on MB device  %s: %s\n", Modbus_Master_Driver_Instances[instance_index].Blocks[i].DeviceName, modbus_strerror(errno));
                        log(log_msg);
                        // if (special_functions[2] != NULL) *special_functions[2]++;
                        Modbus_Master_Driver_Instances[instance_index].Tags[lastTagIndex - 1].TagValue++;
                    }
                    else
                    {
                        pthread_mutex_lock(&bufferLock);
                        int j = 0;
                        int tag_index = 0;
                        uint32_t temp;

                        while(j < return_val)
                        {
                            switch (Modbus_Master_Driver_Instances[instance_index].Tags[start_address + tag_index].Type)
                            {
                            case 3:
                                Modbus_Master_Driver_Instances[instance_index].Tags[start_address + tag_index].TagValue = tempBuff[j];
                                j += 1;
                                break;

                            case 4: // 32-bit FP
                                temp= 0;

                                if(endian_type == 1){ // big-endian
                                    temp = (tempBuff[j] << 16) | tempBuff[j + 1];
                                }
                                else{ // little-endian
                                    temp = (tempBuff[j + 1] << 16) | tempBuff[j];
                                }
                                Modbus_Master_Driver_Instances[instance_index].Tags[start_address + tag_index].TagValue = *(float *)&(temp);
                                j += 2;
                                break;

                            case 5: // 32-bit long
                                temp = 0;
                                if(endian_type == 1){ // big-endian
                                    temp = ((tempBuff[j] << 16) | tempBuff[j + 1]);
                                }
                                else{ // little-endian
                                    temp = ((tempBuff[j + 1] << 16) | tempBuff[j]);
                                }
                                Modbus_Master_Driver_Instances[instance_index].Tags[start_address + tag_index].TagValue = temp;
                                j += 2;
                                break;

                            case 6: // 32-bit swap FP
                                temp = 0;

                                if(endian_type == 1){ // big-endian swap
                                    temp = (tempBuff[j + 1] << 16) | tempBuff[j];
                                }
                                else{ // little-endian swap
                                    temp = (tempBuff[j] << 16) | tempBuff[j + 1];
                                }
                                Modbus_Master_Driver_Instances[instance_index].Tags[start_address + tag_index].TagValue = *(float *)&(temp);
                                j += 2;
                                break;
                            
                            case 7:
                                temp = 0;
                                if(endian_type == 1){ // big-endian swap
                                    temp = ((tempBuff[j + 1] << 16) | tempBuff[j]);
                                }
                                else{ // little-endian swap
                                    temp = ((tempBuff[j] << 16) | tempBuff[j + 1]);
                                }
                                Modbus_Master_Driver_Instances[instance_index].Tags[start_address + tag_index].TagValue = temp;
                                j += 2;
                                break;
                            default:
                                break;
                            }
                            
                            tag_index++;
                        }
                        pthread_mutex_unlock(&bufferLock);
                    }

                    free(tempBuff);
                }

                //Write holding registers
                if (Modbus_Master_Driver_Instances[instance_index].Blocks[i].Count != 0 && Modbus_Master_Driver_Instances[instance_index].Blocks[i].Type >= 52 && \
                                                                                           Modbus_Master_Driver_Instances[instance_index].Blocks[i].Type <= 56   )
                {
                    int lastTagIndex = Modbus_Master_Driver_Instances[instance_index].Blocks[i].LastTagIndex;
                    int start_address = Modbus_Master_Driver_Instances[instance_index].Blocks[i].StartAdd;
                    int count = Modbus_Master_Driver_Instances[instance_index].Blocks[i].Count;
                    bool endian_type = Modbus_Master_Driver_Instances[instance_index].Options.ByteFormat; // 0==false: little-endian | 1==true: big-endian
                    int number_of_regs;
                    
                    switch (Modbus_Master_Driver_Instances[instance_index].Blocks[i].Type){
                        case 52:
                            number_of_regs = count;
                            break;
                        case 53:
                            number_of_regs = 2 * count;
                            break;
                        case 54:
                            number_of_regs = 2 * count;
                            break;
                        case 55:
                            number_of_regs = 2 * count;
                            break;
                        case 56:
                            number_of_regs = 2 * count;
                            break;
                        default:
                            break;
                    }
                    // sleepms(mb_devices[i].rtu_tx_pause);
                    uint16_t *tempBuff;
                    tempBuff = (uint16_t *)malloc(2 * number_of_regs);

                    pthread_mutex_lock(&bufferLock);
                        int j = 0;
                        int tag_index = 0;
                        float float_temp_tag;
                        long long_temp_tag;
                        uint32_t temp;
                        uint16_t low_word = 0;
                        uint16_t high_word = 0;
   
                        while(j < number_of_regs)
                        {
                                                    
                            switch (Modbus_Master_Driver_Instances[instance_index].Tags[start_address + tag_index].Type)
                            {
                            case 52:
                                tempBuff[j] = Modbus_Master_Driver_Instances[instance_index].Tags[start_address + tag_index].TagValue;
                                j += 1;
                                break;

                            case 53: // 32-bit FP
                            
                                temp= 0;
                                low_word = 0;
                                high_word = 0;

                                float_temp_tag = (float) Modbus_Master_Driver_Instances[instance_index].Tags[start_address + tag_index].TagValue;
                                temp = *(uint32_t *)(&float_temp_tag);
                                low_word = (uint16_t)(temp & 0xFFFF);
                                high_word = (uint16_t)((temp >> 16) & 0xFFFF);
                                if(endian_type == 1){ // big-endian
                                    tempBuff[j] = high_word;
                                    tempBuff[j + 1] = low_word;
                                }
                                else{ // little-endian
                                    tempBuff[j] = low_word;
                                    tempBuff[j + 1] = high_word;
                                }
                                
                                j += 2;
                                break;

                            case 54: // 32-bit long
                                temp = 0;
                                low_word = 0;
                                high_word = 0;

                                long_temp_tag = (long) Modbus_Master_Driver_Instances[instance_index].Tags[start_address + tag_index].TagValue;
                                temp = *(uint32_t *)(&long_temp_tag);
                                low_word = (uint16_t)(temp & 0xFFFF);
                                high_word = (uint16_t)((temp >> 16) & 0xFFFF);
                                if(endian_type == 1){ // big-endian
                                    tempBuff[j] = high_word;
                                    tempBuff[j + 1] = low_word;
                                }
                                else{ // little-endian
                                    tempBuff[j] = low_word;
                                    tempBuff[j + 1] = high_word;
                                }
                                
                                j += 2;
                                break;

                            case 55: // 32-bit swap FP
                                temp = 0;
                                low_word = 0;
                                high_word = 0;

                                float_temp_tag = (float) Modbus_Master_Driver_Instances[instance_index].Tags[start_address + tag_index].TagValue;
                                temp = *(uint32_t *)(&float_temp_tag);
                                low_word = (uint16_t)(temp & 0xFFFF);
                                high_word = (uint16_t)((temp >> 16) & 0xFFFF);
                                if(endian_type == 1){ // big-endian
                                    tempBuff[j] = low_word;
                                    tempBuff[j + 1] = high_word;
                                }
                                else{ // little-endian
                                    tempBuff[j] = high_word;
                                    tempBuff[j + 1] = low_word;
                                }
                                j += 2;
                                break;
                            
                            case 56: // 32-bit long swap
                                temp = 0;
                                low_word = 0;
                                high_word = 0;

                                long_temp_tag = (long) Modbus_Master_Driver_Instances[instance_index].Tags[start_address + tag_index].TagValue;
                                temp = *(uint32_t *)(&long_temp_tag);
                                low_word = (uint16_t)(temp & 0xFFFF);
                                high_word = (uint16_t)((temp >> 16) & 0xFFFF);
                                if(endian_type == 1){ // big-endian
                                    tempBuff[j] = low_word;
                                    tempBuff[j + 1] = high_word;
                                }
                                else{ // little-endian
                                    tempBuff[j] = high_word;
                                    tempBuff[j + 1] = low_word;
                                }
                                
                                j += 2;
                                break;
                            default:
                                break;
                            }
                            
                            tag_index++;
                        }
                        pthread_mutex_unlock(&bufferLock);

                    nanosleep(&ts, NULL); 
                    int return_val = modbus_write_registers(Modbus_Master_Driver_Instances[instance_index].Blocks[i].mb_ctx,
                                                            Modbus_Master_Driver_Instances[instance_index].Blocks[i].StartAdd,
                                                            number_of_regs, tempBuff);
                    if (return_val == -1)
                    {
                        if (strcmp(Modbus_Master_Driver_Instances[i].Options.PhysicalLayer, "TCP") == 0)
                        {
                            modbus_close(Modbus_Master_Driver_Instances[instance_index].Blocks[i].mb_ctx);
                            Modbus_Master_Driver_Instances[instance_index].Blocks[i].isConnected = false;
                        }
                        
                        sprintf((char *)log_msg, "Modbus Read Holding Registers failed on MB device  %s: %s\n", Modbus_Master_Driver_Instances[instance_index].Blocks[i].DeviceName, modbus_strerror(errno));
                        log(log_msg);
                        // if (special_functions[2] != NULL) *special_functions[2]++;
                        Modbus_Master_Driver_Instances[instance_index].Tags[lastTagIndex - 1].TagValue++;
                    }
                    
                    free(tempBuff);
                }
            }
        }
        // sleepms(Modbus_Master_Driver_Instances[instance_index].Options.DelayBetweenPolls);
        sleepms(1000);
    }

}



void myFunction(int arg) {
    while (true) {
        // Do some work here...
        cout << "Thread " << this_thread::get_id() << " is running with argument " << arg << endl;
        sleepms(1000);
    }
}


//-----------------------------------------------------------------------------
// This function is called by the main OpenPLC routine when it is initializing.
// Modbus master initialization procedures are here.
//-----------------------------------------------------------------------------
void initializeMB(vector<thread> *workerThreads)
{

    // parseConfig();
    // pthread_t *thread_array;
    // int *instances_index;
    unsigned char log_msg[1000];
    
    // instances_index = (int*) malloc(number_of_Modbus_Master_Driver_Instances * sizeof(int));
    // thread_array = (pthread_t*) malloc(number_of_Modbus_Master_Driver_Instances * sizeof(pthread_t));
    // if Disable == false then init modbus instance
    for (int i = 0; i < number_of_Modbus_Master_Driver_Instances; i++)
    {
        if (!(Modbus_Master_Driver_Instances[0].Options.Disable))
        {
            for (int j = 0; j < Modbus_Master_Driver_Instances[i].number_of_modbus_blocks; j++)
            {
                if (Modbus_Master_Driver_Instances[i].Blocks[j].Enable)
                {
                    if (strcmp(Modbus_Master_Driver_Instances[i].Options.PhysicalLayer, "TCP") == 0 || !strcmp(Modbus_Master_Driver_Instances[i].Blocks[j].IP, "")) // may second condition useless
                    {
                        Modbus_Master_Driver_Instances[i].Blocks[j].mb_ctx = modbus_new_tcp(Modbus_Master_Driver_Instances[i].Blocks[j].IP, Modbus_Master_Driver_Instances[i].Blocks[j].SocketPort);
                        sprintf((char *)log_msg, "Create connection for device : %s\n", Modbus_Master_Driver_Instances[i].Blocks[j].DeviceName);
                        log(log_msg);
                    }
                    // RTU Mode
                    else if (strcmp(Modbus_Master_Driver_Instances[i].Options.PhysicalLayer, "RS232") == 0 || strcmp(Modbus_Master_Driver_Instances[i].Options.PhysicalLayer, "RS485") == 0)
                    {
                        // اگر دو تا دیوایس پیدا شدن که پورت کام مشترک داشتند اما تنظیمات نا مشترک،
                        //  در اینصورت تنظیمات آن دیوایسی که قبل تر از دیوایس جدید سی تی ایکس اش ست شده است را به دیوایس جدید میدهیم
                        //  در غیر اینصورت یک مدباس جدید با تنظیمات خودش ست میکنیم
                        //  حالا چون ما کدمان را بر اساس اینستنس هایی از مدباس که هر کدام پورت کام مجزا دارند میخواهیم تعریف کنیم،‌پس این حالت همواره اتفاق می افتد و همگی تنظیمات مشترک خواهند داشت
                        // Check if there is a device using the same port
                        // int share_index = -1;
                        // for (int a = 0; a < Modbus_Master_Driver_Instances[i].number_of_modbus_blocks && a < j; a++)
                        // {
                        //     if (strcmp(Modbus_Master_Driver_Instances[i].Options.COMPort, mb_devices[a].dev_address) == 0)
                        //     {
                        //         share_index = a;
                        //         break;
                        //     }
                        // }
                        // if (share_index != -1)
                        // {
                        //     if (mb_devices[i].rtu_baud != mb_devices[share_index].rtu_baud || mb_devices[i].rtu_parity != mb_devices[share_index].rtu_parity ||
                        //         mb_devices[i].rtu_data_bit != mb_devices[share_index].rtu_data_bit || mb_devices[i].rtu_stop_bit != mb_devices[share_index].rtu_stop_bit)
                        //     {
                        //         unsigned char log_msg[1000];
                        //         sprintf((char *)log_msg, "Warning MB device %s port setting missmatch\n", mb_devices[i].dev_name);
                        //         log(log_msg);
                        //     }
                        //     mb_devices[i].mb_ctx = mb_devices[share_index].mb_ctx;
                        // }
                        // else
                        // {
                        Modbus_Master_Driver_Instances[i].Blocks[j].mb_ctx = modbus_new_rtu(Modbus_Master_Driver_Instances[i].Options.COMPort, Modbus_Master_Driver_Instances[i].Options.BaudRate,
                                                              Modbus_Master_Driver_Instances[i].Options.Parity, Modbus_Master_Driver_Instances[i].Options.DataBit,
                                                              Modbus_Master_Driver_Instances[i].Options.StopBit);
                        int ret;
                        if (strcmp(Modbus_Master_Driver_Instances[i].Options.PhysicalLayer, "RS485") == 0){
                            ret = modbus_rtu_set_serial_mode(Modbus_Master_Driver_Instances[i].Blocks[j].mb_ctx, MODBUS_RTU_RS485);
                        }
                        else if(strcmp(Modbus_Master_Driver_Instances[i].Options.PhysicalLayer, "RS232") == 0){
                            ret = modbus_rtu_set_serial_mode(Modbus_Master_Driver_Instances[i].Blocks[j].mb_ctx, MODBUS_RTU_RS232);
                        }
                        if (ret == -1){
                            sprintf((char *)log_msg, "Error MB device %s Not Config Properly\n", Modbus_Master_Driver_Instances[i].Blocks[j].DeviceName);
                            log(log_msg);
                        }
                    }
                }

                // slave id

                modbus_set_slave(Modbus_Master_Driver_Instances[i].Blocks[j].mb_ctx, Modbus_Master_Driver_Instances[i].Blocks[j].SlaveID);
                sprintf((char *)log_msg, "set slave for device : %s with Slave ID : %d \n", Modbus_Master_Driver_Instances[i].Blocks[j].DeviceName, Modbus_Master_Driver_Instances[i].Blocks[j].SlaveID);
                log(log_msg);
                // timeout
                uint32_t to_sec = Modbus_Master_Driver_Instances[i].Blocks[j].Timeout / 1000;
                uint32_t to_usec = (Modbus_Master_Driver_Instances[i].Blocks[j].Timeout % 1000) * 1000;
                modbus_set_response_timeout(Modbus_Master_Driver_Instances[i].Blocks[j].mb_ctx, to_sec, to_usec);
            }

            // Initialize comm error counter
            // if (special_functions[2] != NULL)
            //     *special_functions[2] = 0;


        }
    }

    if (number_of_Modbus_Master_Driver_Instances > 0)
    {
        // for (int k = 0; k < number_of_Modbus_Master_Driver_Instances; k++)
        // {
        //     instances_index[k] = k;
        //     // int ret = pthread_create(&thread_array[k], NULL, querySlaveDevices, (void *)&instances_index[k]);
        //     // sprintf((char *)log_msg, "ret: %d \n", ret);
        //     // log(log_msg);
        //     // if (ret == 0)
        //     // {
        //     //     pthread_detach(thread_array[k]);
        //     // }

        // }

            // Create multiple threads to run myFunction in the background
        for (int k = 0; k < number_of_Modbus_Master_Driver_Instances; k++)
        {
            
            workerThreads->emplace_back(querySlaveDevices, k);
        }
    }
}
