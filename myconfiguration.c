//********************************************************************
//
//      ADC Init Initialization Part
//      4DClass
//      Copyright(C)  2017
//      All rights reserved
//***********************************************************************
#include "MyInclude.h"



/*******************系统 初始化*********************/
void System_init(void)
{
    //PCON    = 0x03;
    OPTION = 0B00000000;//BIT7使能上拉位，0=使能，1=禁止
    OSCCON = 0B01110000;   //内部振荡器选择 16Mhz
    WDTCON = 0B00001001;//BIT4~BIT1看门狗定时器周期选择 bit0 1=打开看门狗0=关闭看门狗
}

/*******************GPIO 初始化*********************/
void GPIO_Init(void)
{
    //TRISA 0=OUTPUT,1=INPUT
    TRISA0=0;
    TRISA1=0;
    TRISA6=0;
    //TRISC 0=OUTPUT,1=INPUT
    TRISC1=0;//下拉
    TRISC2=0;//下拉
    TRISC3=0;//下拉

    CM0=1;
    CM1=1;
    CM2=1;//比较器关闭，CxIN管脚为数字IO管脚

    //当弱上拉和弱下拉同时在这些 IO 打开时，弱下拉将被禁止，弱上拉起作用
    //ANSEL portA 1=模拟 0=数字
    ANSEL0=0;
    ANSEL1=0;
    ANSEL2=0;
    ANSEL3=0;
    ANSEL4=0;
    ANSEL5=0;
    ANSEL6=0;
    ANSEL7=0;
    //WPUA 1=使能上拉，0=禁止
    WPUA0=1;
    WPUA1=1;
    WPUA6=1;
    //WPUA 1=使能上拉，0=禁止
    WPUC1=1;
    WPUC2=0;
    WPUC3=1;
    //WPD 1=使能下拉，0=断开下拉
    WPDA4=0;
    WPDC1=0;
    WPDC2=0;
    WPDC3=0;
}


void Delay_xms(unsigned int x)  //死延时x毫秒
{
    unsigned int i;
    for(i=0; i<x; i++) {
        __delay_ms(1);
        CLRWDT();
    }
}
