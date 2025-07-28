#line 1 "C:/Users/GarablueX/Desktop/Multimeter/MC/MM.c"
sbit LCD_RS at RC6_bit;
sbit LCD_EN at RC7_bit;
sbit LCD_D4 at RD4_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D7 at RD7_bit;

sbit LCD_RS_Direction at TRISC6_bit;
sbit LCD_EN_Direction at TRISC7_bit;
sbit LCD_D4_Direction at TRISD4_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D7_Direction at TRISD7_bit;



float Viread;
float Vi;
float Voread;
float Vo;
float Voltage;
char V[5];
char RS[5];
float Vr;
float Resistance;

float V1;
float V2;
float VA;
float AMP;
char A[5];




void FVoltage(){
 Viread=ADC_Read(1)*(5.0/1024.0);
 Vi=Viread*10;
 Voread=ADC_Read(0)*(5.0/1024.0);
 Vo=Voread*10;
 Voltage=Vi-Vo;
 FloatToStr(Voltage,V);
 Lcd_Out(1,1,V);
 Lcd_Out(1, 10,"  VOLT");
}
void Fresistance(){
 Vr=ADC_Read(2)*(5.0/1024.0);
 Resistance= 10.0*(Vr/(5.0-Vr));
 FloatToStr(Resistance,RS);
 LCD_Out(1,1,RS);
 Lcd_Out(1, 10,"  OHM");

}
void Ampere(){
 V1=ADC_Read(3)*(5.0/1024.0);
 V2=ADC_Read(4)*(5.0/1024.0);
 VA=V1-V2;
 AMP=(VA/10.0)*1000.0;
 FloatToStr(AMP,A);
 LCD_Out(1,1,A);
 LCD_Out(1,10,"  m AMPERE");


}



void main() {
 TRISA0_bit = 1;
 TRISA1_bit = 1;
 TRISA2_BIT=1;
 TRISA3_BIT=1;
 TRISA4_BIT=1;
 TRISB0_bit=1;
 TRISB1_BIT=1;
 TRISB2_BIT=1;
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);


 while(1){
 if(PORTB.B0==1){
 Lcd_Out(1,1,"                                ");
 FVoltage();
 Delay_ms(100);
 }
 if(PORTB.B1==1){
 Lcd_Out(1,1,"                                ");
 Fresistance();
 Delay_ms(100);
 }
 if(PORTB.B2==1){
 Lcd_Out(1,1,"                                ");
 Ampere();
 Delay_ms(100);


 }


 if(PORTB.B0==0 & PORTB.B1==0 & PORTB.B2==0){
 Lcd_Out(1,1,"                                ");
 Lcd_Out(1,1,"CHOOSE TYPE X");
 Delay_ms(100);

 }

}



}
