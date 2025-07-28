
_FVoltage:

;MM.c,36 :: 		void FVoltage(){
;MM.c,37 :: 		Viread=ADC_Read(1)*(5.0/1024.0);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _word2double+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      119
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _Viread+0
	MOVF       R0+1, 0
	MOVWF      _Viread+1
	MOVF       R0+2, 0
	MOVWF      _Viread+2
	MOVF       R0+3, 0
	MOVWF      _Viread+3
;MM.c,38 :: 		Vi=Viread*10;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      130
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _Vi+0
	MOVF       R0+1, 0
	MOVWF      _Vi+1
	MOVF       R0+2, 0
	MOVWF      _Vi+2
	MOVF       R0+3, 0
	MOVWF      _Vi+3
;MM.c,39 :: 		Voread=ADC_Read(0)*(5.0/1024.0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _word2double+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      119
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _Voread+0
	MOVF       R0+1, 0
	MOVWF      _Voread+1
	MOVF       R0+2, 0
	MOVWF      _Voread+2
	MOVF       R0+3, 0
	MOVWF      _Voread+3
;MM.c,40 :: 		Vo=Voread*10;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      130
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _Vo+0
	MOVF       R0+1, 0
	MOVWF      _Vo+1
	MOVF       R0+2, 0
	MOVWF      _Vo+2
	MOVF       R0+3, 0
	MOVWF      _Vo+3
;MM.c,41 :: 		Voltage=Vi-Vo;
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       _Vi+0, 0
	MOVWF      R0+0
	MOVF       _Vi+1, 0
	MOVWF      R0+1
	MOVF       _Vi+2, 0
	MOVWF      R0+2
	MOVF       _Vi+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _Voltage+0
	MOVF       R0+1, 0
	MOVWF      _Voltage+1
	MOVF       R0+2, 0
	MOVWF      _Voltage+2
	MOVF       R0+3, 0
	MOVWF      _Voltage+3
;MM.c,42 :: 		FloatToStr(Voltage,V);
	MOVF       R0+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       R0+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       R0+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       R0+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      _V+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;MM.c,43 :: 		Lcd_Out(1,1,V);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _V+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MM.c,44 :: 		Lcd_Out(1, 10,"  VOLT");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_MM+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MM.c,45 :: 		}
L_end_FVoltage:
	RETURN
; end of _FVoltage

_Fresistance:

;MM.c,46 :: 		void Fresistance(){
;MM.c,47 :: 		Vr=ADC_Read(2)*(5.0/1024.0);
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _word2double+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      119
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__Fresistance+0
	MOVF       R0+1, 0
	MOVWF      FLOC__Fresistance+1
	MOVF       R0+2, 0
	MOVWF      FLOC__Fresistance+2
	MOVF       R0+3, 0
	MOVWF      FLOC__Fresistance+3
	MOVF       FLOC__Fresistance+0, 0
	MOVWF      _Vr+0
	MOVF       FLOC__Fresistance+1, 0
	MOVWF      _Vr+1
	MOVF       FLOC__Fresistance+2, 0
	MOVWF      _Vr+2
	MOVF       FLOC__Fresistance+3, 0
	MOVWF      _Vr+3
;MM.c,48 :: 		Resistance= 10.0*(Vr/(5.0-Vr));
	MOVF       FLOC__Fresistance+0, 0
	MOVWF      R4+0
	MOVF       FLOC__Fresistance+1, 0
	MOVWF      R4+1
	MOVF       FLOC__Fresistance+2, 0
	MOVWF      R4+2
	MOVF       FLOC__Fresistance+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      32
	MOVWF      R0+2
	MOVLW      129
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       FLOC__Fresistance+0, 0
	MOVWF      R0+0
	MOVF       FLOC__Fresistance+1, 0
	MOVWF      R0+1
	MOVF       FLOC__Fresistance+2, 0
	MOVWF      R0+2
	MOVF       FLOC__Fresistance+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      130
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _Resistance+0
	MOVF       R0+1, 0
	MOVWF      _Resistance+1
	MOVF       R0+2, 0
	MOVWF      _Resistance+2
	MOVF       R0+3, 0
	MOVWF      _Resistance+3
;MM.c,49 :: 		FloatToStr(Resistance,RS);
	MOVF       R0+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       R0+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       R0+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       R0+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      _RS+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;MM.c,50 :: 		LCD_Out(1,1,RS);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _RS+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MM.c,51 :: 		Lcd_Out(1, 10,"  OHM");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_MM+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MM.c,53 :: 		}
L_end_Fresistance:
	RETURN
; end of _Fresistance

_Ampere:

;MM.c,54 :: 		void Ampere(){
;MM.c,55 :: 		V1=ADC_Read(3)*(5.0/1024.0);
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _word2double+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      119
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _V1+0
	MOVF       R0+1, 0
	MOVWF      _V1+1
	MOVF       R0+2, 0
	MOVWF      _V1+2
	MOVF       R0+3, 0
	MOVWF      _V1+3
;MM.c,56 :: 		V2=ADC_Read(4)*(5.0/1024.0);
	MOVLW      4
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _word2double+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      119
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _V2+0
	MOVF       R0+1, 0
	MOVWF      _V2+1
	MOVF       R0+2, 0
	MOVWF      _V2+2
	MOVF       R0+3, 0
	MOVWF      _V2+3
;MM.c,57 :: 		VA=V1-V2;
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       _V1+0, 0
	MOVWF      R0+0
	MOVF       _V1+1, 0
	MOVWF      R0+1
	MOVF       _V1+2, 0
	MOVWF      R0+2
	MOVF       _V1+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _VA+0
	MOVF       R0+1, 0
	MOVWF      _VA+1
	MOVF       R0+2, 0
	MOVWF      _VA+2
	MOVF       R0+3, 0
	MOVWF      _VA+3
;MM.c,58 :: 		AMP=(VA/10.0)*1000.0;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      130
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      122
	MOVWF      R4+2
	MOVLW      136
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _AMP+0
	MOVF       R0+1, 0
	MOVWF      _AMP+1
	MOVF       R0+2, 0
	MOVWF      _AMP+2
	MOVF       R0+3, 0
	MOVWF      _AMP+3
;MM.c,59 :: 		FloatToStr(AMP,A);
	MOVF       R0+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       R0+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       R0+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       R0+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      _A+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;MM.c,60 :: 		LCD_Out(1,1,A);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _A+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MM.c,61 :: 		LCD_Out(1,10,"  m AMPERE");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_MM+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MM.c,64 :: 		}
L_end_Ampere:
	RETURN
; end of _Ampere

_main:

;MM.c,68 :: 		void main() {
;MM.c,69 :: 		TRISA0_bit = 1;
	BSF        TRISA0_bit+0, BitPos(TRISA0_bit+0)
;MM.c,70 :: 		TRISA1_bit = 1;
	BSF        TRISA1_bit+0, BitPos(TRISA1_bit+0)
;MM.c,71 :: 		TRISA2_BIT=1;
	BSF        TRISA2_bit+0, BitPos(TRISA2_bit+0)
;MM.c,72 :: 		TRISA3_BIT=1;
	BSF        TRISA3_bit+0, BitPos(TRISA3_bit+0)
;MM.c,73 :: 		TRISA4_BIT=1;
	BSF        TRISA4_bit+0, BitPos(TRISA4_bit+0)
;MM.c,74 :: 		TRISB0_bit=1;
	BSF        TRISB0_bit+0, BitPos(TRISB0_bit+0)
;MM.c,75 :: 		TRISB1_BIT=1;
	BSF        TRISB1_bit+0, BitPos(TRISB1_bit+0)
;MM.c,76 :: 		TRISB2_BIT=1;
	BSF        TRISB2_bit+0, BitPos(TRISB2_bit+0)
;MM.c,77 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;MM.c,78 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MM.c,81 :: 		while(1){
L_main0:
;MM.c,82 :: 		if(PORTB.B0==1){
	BTFSS      PORTB+0, 0
	GOTO       L_main2
;MM.c,83 :: 		Lcd_Out(1,1,"                                ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_MM+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MM.c,84 :: 		FVoltage();
	CALL       _FVoltage+0
;MM.c,85 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;MM.c,86 :: 		}
L_main2:
;MM.c,87 :: 		if(PORTB.B1==1){
	BTFSS      PORTB+0, 1
	GOTO       L_main4
;MM.c,88 :: 		Lcd_Out(1,1,"                                ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_MM+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MM.c,89 :: 		Fresistance();
	CALL       _Fresistance+0
;MM.c,90 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;MM.c,91 :: 		}
L_main4:
;MM.c,92 :: 		if(PORTB.B2==1){
	BTFSS      PORTB+0, 2
	GOTO       L_main6
;MM.c,93 :: 		Lcd_Out(1,1,"                                ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_MM+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MM.c,94 :: 		Ampere();
	CALL       _Ampere+0
;MM.c,95 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
;MM.c,98 :: 		}
L_main6:
;MM.c,101 :: 		if(PORTB.B0==0 & PORTB.B1==0 & PORTB.B2==0){
	BTFSC      PORTB+0, 0
	GOTO       L__main14
	BSF        112, 0
	GOTO       L__main15
L__main14:
	BCF        112, 0
L__main15:
	BTFSC      PORTB+0, 1
	GOTO       L__main16
	BSF        3, 0
	GOTO       L__main17
L__main16:
	BCF        3, 0
L__main17:
	BTFSS      112, 0
	GOTO       L__main18
	BTFSS      3, 0
	GOTO       L__main18
	BSF        112, 0
	GOTO       L__main19
L__main18:
	BCF        112, 0
L__main19:
	BTFSC      PORTB+0, 2
	GOTO       L__main20
	BSF        3, 0
	GOTO       L__main21
L__main20:
	BCF        3, 0
L__main21:
	BTFSS      112, 0
	GOTO       L__main22
	BTFSS      3, 0
	GOTO       L__main22
	BSF        112, 0
	GOTO       L__main23
L__main22:
	BCF        112, 0
L__main23:
	BTFSS      112, 0
	GOTO       L_main8
;MM.c,102 :: 		Lcd_Out(1,1,"                                ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_MM+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MM.c,103 :: 		Lcd_Out(1,1,"CHOOSE TYPE X");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_MM+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MM.c,104 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
;MM.c,106 :: 		}
L_main8:
;MM.c,108 :: 		}
	GOTO       L_main0
;MM.c,112 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
