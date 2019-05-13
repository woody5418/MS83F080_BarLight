//********************************************************************
//
//      ADC Init Initialization Part
//      4DClass
//      Copyright(C)  2017
//      All rights reserved
//***********************************************************************
#include "MyInclude.h"

/*******************EEPROM 初始化*********************/

//写EEPROM 数据  u16
void Write_EEPROM_u16(u8 EEAddress,u16 EEDatas)
{
    Write_EEPROM_u8(EEAddress,(EEDatas>>8)&0xff);
    Write_EEPROM_u8(EEAddress+1,EEDatas&0xff);
}
//读EEPROM 数据  u16
u16 Read_EEPROM_u16(u8 EEAddress)
{
    u16 EepromData=0;

    EepromData = Read_EEPROM_u8(EEAddress);
    EepromData = EepromData<<8;
    EepromData |= Read_EEPROM_u8(EEAddress+1);
    return 	EepromData;
}
//写EEPROM 数据  u8
void Write_EEPROM_u8(u8 EEAddress,u8 EEDatas)
{
    EEADR  = EEAddress;
    asm("nop");
    EEDAT  = EEDatas;
    EECON1 = 0x34;
    EECON2 = 0x01;
    asm("nop");
    asm("nop");
    asm("nop");
    while(WR==1)CLRWDT();
    WREN1 = 0;
    WREN2 = 0;
    WREN3 = 0;
}
//读取EEPROM数据 u8
u8 Read_EEPROM_u8(u8 EEAddress)
{
    u8 EepromData=0;
    EEADR  = EEAddress;
    RD = 1;
    EepromData = EEDAT;
    RD = 0;
    return 	EepromData;
}






