/****************************************************************************
*       Copyright (C), ������ά���ǽ����Ƽ����޹�˾
*
*       MS80F080
*       V0.1
*       2017-12-04
*       Woody  QQ:2490006131
*Description  :MS83F0802BS
*           		   _________
* 				   VDD|1   M   8|VSS
*	 PA6/OSC2/CLKO/T1G|2   S   7|PA0/AN0/C1IN+/ICSPCLK
*         PC3/P1C/PWM4|3   8   6|PA1/AN1/C1IN-/ICSPDAT
*     PC2/AN6/P1D/PWM5|4___3___5|PC1/AN5/C2IN-/P1E/INT
*
*
*****************************************************************************/
#include "MyInclude.h"
#include "MyKey.h"
#include "MyADC.h"
#include "MyLED.h"

/*  Variate ////////////////////////////////////////////////////////////////*/
u16 ADC_Class=0;


// ������
void main(void)
{
    CLRWDT();//�忴�Ź�
    System_init();
    GPIO_Init();
    ADC_Init();
    while(1) {
        CLRWDT();//�忴�Ź�
        ADC_Class = GetADCValue();
        Delay_xms(1);
        if((ADC_Class >= 0)&&(ADC_Class < 200))     LED_Contrl(0);
        if((ADC_Class >= 200)&&(ADC_Class < 250))   LED_Contrl(1);
        if((ADC_Class >= 250)&&(ADC_Class < 450))   LED_Contrl(2);
        if((ADC_Class >= 450)&&(ADC_Class < 600))   LED_Contrl(3);
        if((ADC_Class >= 600)&&(ADC_Class < 800))   LED_Contrl(4);
        if((ADC_Class >= 800)&&(ADC_Class <= 1024)) LED_Contrl(5);
    }
}
/*******************************************************************************
 * ��������interrupt ISR
 * ����  ���жϺ���
 * ����  ����
 * ���  ����
 * ����  ���ڲ�����
 ******************************************************************************/
void interrupt ISR(void)
{

}



