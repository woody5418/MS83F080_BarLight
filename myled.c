//********************************************************************
//
//      LED Init Initialization Part
//      4DClass
//      Copyright(C)  2017
//      All rights reserved
//***********************************************************************
#include "MyInclude.h"



/*******************************************************************************
 * 函数名：LED_Init
 * 描述  ：LED初始化函数
 * 输入  ：无
 * 输出  ：无
 * 调用  ：内部调用
 ******************************************************************************/

void LED_Contrl(u8 num_t)
{
    switch(num_t) {
    case 1:
        LED_1=0;//HIGH
        LED_2=LED_3=LED_4=LED_5=1; //LOW
        break;
    case 2:
        LED_1=LED_2=0;//HIGH
        LED_3=LED_4=LED_5=1; //LOW
        break;
    case 3:
        LED_1=LED_2=LED_3=0;//HIGH
        LED_4=LED_5=1; //LOW
        break;
    case 4:
        LED_1=LED_2=LED_3=LED_4=0;//HIGH
        LED_5=1; //LOW
        break;
    case 5:
        LED_1=LED_2=LED_3=LED_4=LED_5=0; //HIGH
        break;
    default	:
        LED_1=LED_2=LED_3=LED_4=LED_5=1; //LOW
        break;
    }
}














