//********************************************************************
//
//      KEY Initialization Part
//      4DClass
//      Copyright(C)  2017
//      All rights reserved
//***********************************************************************
#ifndef __MYEEPROM_H
#define __MYEEPROM_H


u8 Read_EEPROM_u8(u8 EEAddress);
u16 Read_EEPROM_u16(u8 EEAddress);
void Write_EEPROM_u8(u8 EEAddress,u8 EEDatas);
void Write_EEPROM_u16(u8 EEAddress,u16 EEDatas);

#endif

