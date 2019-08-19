;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler - http://www.sourceboost.com
;// Version       : 7.43
;// License Type  : Lite License (Unregistered)
;// Limitations   : PIC12,PIC16 max code size:2048 words, max RAM banks:2, Non commercial use only
;/////////////////////////////////////////////////////////////////////////////////

	include "P16F873A.inc"
; Heap block 0, size:50 (0x000000CD - 0x000000FE)
__HEAP_BLOCK0_BANK               EQU	0x00000001
__HEAP_BLOCK0_START_OFFSET       EQU	0x0000004D
__HEAP_BLOCK0_END_OFFSET         EQU	0x0000007E
; Heap block 1, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK1_BANK               EQU	0x00000000
__HEAP_BLOCK1_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK1_END_OFFSET         EQU	0x00000000
; Heap block 2, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK2_BANK               EQU	0x00000000
__HEAP_BLOCK2_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK2_END_OFFSET         EQU	0x00000000
; Heap block 3, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK3_BANK               EQU	0x00000000
__HEAP_BLOCK3_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK3_END_OFFSET         EQU	0x00000000
gbl_status                       EQU	0x00000003 ; bytes:1
gbl_indf                         EQU	0x00000000 ; bytes:1
gbl_tmr0                         EQU	0x00000001 ; bytes:1
gbl_pcl                          EQU	0x00000002 ; bytes:1
gbl_fsr                          EQU	0x00000004 ; bytes:1
gbl_porta                        EQU	0x00000005 ; bytes:1
gbl_portb                        EQU	0x00000006 ; bytes:1
gbl_portc                        EQU	0x00000007 ; bytes:1
gbl_pclath                       EQU	0x0000000A ; bytes:1
gbl_intcon                       EQU	0x0000000B ; bytes:1
gbl_pir1                         EQU	0x0000000C ; bytes:1
gbl_pir2                         EQU	0x0000000D ; bytes:1
gbl_tmr1l                        EQU	0x0000000E ; bytes:1
gbl_tmr1h                        EQU	0x0000000F ; bytes:1
gbl_t1con                        EQU	0x00000010 ; bytes:1
gbl_tmr2                         EQU	0x00000011 ; bytes:1
gbl_t2con                        EQU	0x00000012 ; bytes:1
gbl_sspbuf                       EQU	0x00000013 ; bytes:1
gbl_sspcon                       EQU	0x00000014 ; bytes:1
gbl_ccpr1l                       EQU	0x00000015 ; bytes:1
gbl_ccpr1h                       EQU	0x00000016 ; bytes:1
gbl_ccp1con                      EQU	0x00000017 ; bytes:1
gbl_rcsta                        EQU	0x00000018 ; bytes:1
gbl_txreg                        EQU	0x00000019 ; bytes:1
gbl_rcreg                        EQU	0x0000001A ; bytes:1
gbl_ccpr2l                       EQU	0x0000001B ; bytes:1
gbl_ccpr2h                       EQU	0x0000001C ; bytes:1
gbl_ccp2con                      EQU	0x0000001D ; bytes:1
gbl_adresh                       EQU	0x0000001E ; bytes:1
gbl_adcon0                       EQU	0x0000001F ; bytes:1
gbl_option_reg                   EQU	0x00000081 ; bytes:1
gbl_trisa                        EQU	0x00000085 ; bytes:1
gbl_trisb                        EQU	0x00000086 ; bytes:1
gbl_trisc                        EQU	0x00000087 ; bytes:1
gbl_pie1                         EQU	0x0000008C ; bytes:1
gbl_pie2                         EQU	0x0000008D ; bytes:1
gbl_pcon                         EQU	0x0000008E ; bytes:1
gbl_sspcon2                      EQU	0x00000091 ; bytes:1
gbl_pr2                          EQU	0x00000092 ; bytes:1
gbl_sspadd                       EQU	0x00000093 ; bytes:1
gbl_sspstat                      EQU	0x00000094 ; bytes:1
gbl_txsta                        EQU	0x00000098 ; bytes:1
gbl_spbrg                        EQU	0x00000099 ; bytes:1
gbl_cmcon                        EQU	0x0000009C ; bytes:1
gbl_cvrcon                       EQU	0x0000009D ; bytes:1
gbl_adresl                       EQU	0x0000009E ; bytes:1
gbl_adcon1                       EQU	0x0000009F ; bytes:1
gbl_eedata                       EQU	0x0000010C ; bytes:1
gbl_eeadr                        EQU	0x0000010D ; bytes:1
gbl_eedath                       EQU	0x0000010E ; bytes:1
gbl_eeadrh                       EQU	0x0000010F ; bytes:1
gbl_eecon1                       EQU	0x0000018C ; bytes:1
gbl_eecon2                       EQU	0x0000018D ; bytes:1
gbl_cont                         EQU	0x00000043 ; bytes:2
gbl_contrasena                   EQU	0x00000020 ; bytes:8
gbl_contrasenaIngresada          EQU	0x00000028 ; bytes:8
gbl_nuevaContrasena              EQU	0x00000030 ; bytes:8
gbl_posicion_nueva_contra        EQU	0x00000045 ; bytes:2
gbl_claveConfirmar               EQU	0x00000038 ; bytes:8
gbl_posicion_confirmar_contra    EQU	0x00000047 ; bytes:2
gbl_contadorIntento              EQU	0x00000049 ; bytes:2
gbl_desbloqueado                 EQU	0x0000004D ; bit:0
gbl_bandera_configuracion        EQU	0x0000004D ; bit:1
gbl_bandera_confirmacion_cambio  EQU	0x0000004D ; bit:2
gbl_bandera_modificar            EQU	0x0000004D ; bit:3
gbl_posicion                     EQU	0x0000004B ; bytes:2
instruccio_00015_arg_comando     EQU	0x000000CB ; bytes:2
escribirDa_00016_arg_dato        EQU	0x000000CB ; bytes:2
transmitir_00000_arg_date        EQU	0x00000079 ; bytes:2
mostrarMen_00017_1_mensaje_00018 EQU	0x000000A0 ; bytes:24
mostrarMen_00017_1_i             EQU	0x00000077 ; bytes:2
mostrarMen_00019_1_mensaje       EQU	0x00000061 ; bytes:22
mostrarMen_00019_1_i             EQU	0x00000077 ; bytes:2
mensajeCaj_0001A_1_mensaje       EQU	0x0000004E ; bytes:17
mensajeCaj_0001A_1_i             EQU	0x0000005F ; bytes:2
mensajeIng_0001B_1_mensaje       EQU	0x0000004E ; bytes:14
mensajeIng_0001B_1_i             EQU	0x0000005C ; bytes:2
mostrarMen_0001C_1_mensaje       EQU	0x00000061 ; bytes:14
mostrarMen_0001C_1_i             EQU	0x0000006F ; bytes:2
mostrarMen_0001D_1_mensaje       EQU	0x00000065 ; bytes:12
mostrarMen_0001D_1_i             EQU	0x00000071 ; bytes:2
mostrarMen_0001E_1_mensaje       EQU	0x00000065 ; bytes:15
mostrarMen_0001E_1_i             EQU	0x00000074 ; bytes:2
mensajeCor_0001F_1_mensaje       EQU	0x000000B8 ; bytes:17
mensajeCor_0001F_1_posicio       EQU	0x0000007C ; bytes:2
mensajeCor_0001F_1_i             EQU	0x000000C9 ; bytes:2
mensajeCam_00020_1_mensaje       EQU	0x00000068 ; bytes:10
mensajeCam_00020_1_posicio       EQU	0x00000072 ; bytes:2
mensajeCam_00020_1_i             EQU	0x00000074 ; bytes:2
mensajeErr_00021_1_mensaje       EQU	0x00000068 ; bytes:16
mensajeErr_00021_1_posicio       EQU	0x00000078 ; bytes:2
mensajeErr_00021_1_i             EQU	0x0000007A ; bytes:2
mensajeInc_00022_1_mensaje       EQU	0x00000068 ; bytes:11
mensajeInc_00022_1_posicio       EQU	0x00000073 ; bytes:2
mensajeInc_00022_1_i             EQU	0x00000075 ; bytes:2
reiniciarC_00023_1_i             EQU	0x00000068 ; bytes:2
reiniciarC_00024_1_i             EQU	0x00000068 ; bytes:2
validarCon_00025_1_condicion     EQU	0x00000065 ; bit:0
validarCon_00025_1_i             EQU	0x00000066 ; bytes:2
CompTempVar600                   EQU	0x00000068 ; bytes:1
CompTempVar601                   EQU	0x00000069 ; bytes:1
CompTempVar602                   EQU	0x00000065 ; bytes:1
CompTempVar603                   EQU	0x00000065 ; bytes:1
cambiarCla_00026_5_condicion     EQU	0x00000065 ; bit:0
cambiarCla_00026_5_i             EQU	0x00000066 ; bytes:2
CompTempVar606                   EQU	0x00000068 ; bytes:1
CompTempVar607                   EQU	0x00000069 ; bytes:1
CompTempVar610                   EQU	0x00000068 ; bytes:1
CompTempVar611                   EQU	0x00000069 ; bytes:1
interrupt_19_a                   EQU	0x00000061 ; bytes:2
interrupt_19_b                   EQU	0x00000063 ; bytes:2
delay_ms_00000_arg_del           EQU	0x0000007E ; bytes:1
delay_s_00000_arg_del            EQU	0x00000076 ; bytes:1
Int1Context                      EQU	0x0000007F ; bytes:1
Int1BContext                     EQU	0x00000040 ; bytes:3
	ORG 0x00000000
	GOTO	_startup
	ORG 0x00000004
	MOVWF Int1Context
	SWAPF STATUS, W
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF Int1BContext
	SWAPF PCLATH, W
	MOVWF Int1BContext+D'1'
	SWAPF FSR, W
	MOVWF Int1BContext+D'2'
	BCF PCLATH,3
	BCF PCLATH,4
	GOTO	interrupt
	ORG 0x00000010
delay_ms_00000
; { delay_ms ; function begin
	MOVF delay_ms_00000_arg_del, F
	BTFSS STATUS,Z
	GOTO	label1
	RETURN
label1
	MOVLW 0xF9
label2
	ADDLW 0xFF
	BTFSS STATUS,Z
	GOTO	label2
	NOP
	DECFSZ delay_ms_00000_arg_del, F
	GOTO	label1
	RETURN
; } delay_ms function end

	ORG 0x0000001C
delay_s_00000
; { delay_s ; function begin
label3
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	DECFSZ delay_s_00000_arg_del, F
	GOTO	label3
	RETURN
; } delay_s function end

	ORG 0x0000002B
instruccio_00015
; { instruccion ; function begin
	MOVF instruccio_00015_arg_comando, W
	BCF STATUS, RP0
	MOVWF gbl_portc
	BSF gbl_porta,4
	BCF gbl_porta,5
	MOVLW 0x0F
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BCF gbl_porta,4
	BCF gbl_porta,5
	RETURN
; } instruccion function end

	ORG 0x00000036
escribirDa_00016
; { escribirDato ; function begin
	MOVF escribirDa_00016_arg_dato, W
	BCF STATUS, RP0
	MOVWF gbl_portc
	BSF gbl_porta,4
	BSF gbl_porta,5
	MOVLW 0x0F
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BCF gbl_porta,4
	BSF gbl_porta,5
	BCF gbl_porta,4
	BCF gbl_porta,5
	RETURN
; } escribirDato function end

	ORG 0x00000043
mensajeCor_0001F
; { mensajeCorrecto ; function begin
	MOVLW 0x20
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF mensajeCor_0001F_1_mensaje+D'4'
	MOVWF mensajeCor_0001F_1_mensaje+D'8'
	MOVLW 0x41
	MOVWF mensajeCor_0001F_1_mensaje+D'7'
	MOVWF mensajeCor_0001F_1_mensaje+D'12'
	MOVLW 0x42
	MOVWF mensajeCor_0001F_1_mensaje
	MOVLW 0x44
	MOVWF mensajeCor_0001F_1_mensaje+D'5'
	MOVLW 0x45
	MOVWF mensajeCor_0001F_1_mensaje+D'2'
	MOVLW 0x49
	MOVWF mensajeCor_0001F_1_mensaje+D'6'
	MOVWF mensajeCor_0001F_1_mensaje+D'14'
	MOVLW 0x4E
	MOVWF mensajeCor_0001F_1_mensaje+D'3'
	MOVLW 0x4F
	MOVWF mensajeCor_0001F_1_mensaje+D'15'
	MOVLW 0x52
	MOVWF mensajeCor_0001F_1_mensaje+D'13'
	MOVLW 0x53
	MOVWF mensajeCor_0001F_1_mensaje+D'10'
	MOVLW 0x55
	MOVWF mensajeCor_0001F_1_mensaje+D'1'
	MOVWF mensajeCor_0001F_1_mensaje+D'9'
	MOVWF mensajeCor_0001F_1_mensaje+D'11'
	CLRF mensajeCor_0001F_1_mensaje+D'16'
	MOVLW 0x80
	BCF STATUS, RP0
	MOVWF mensajeCor_0001F_1_posicio
	CLRF mensajeCor_0001F_1_posicio+D'1'
	BSF STATUS, RP0
	CLRF mensajeCor_0001F_1_i
	CLRF mensajeCor_0001F_1_i+D'1'
label4
	MOVLW 0x11
	SUBWF mensajeCor_0001F_1_i, W
	MOVF mensajeCor_0001F_1_i+D'1', W
	BTFSC STATUS,C
	GOTO	label5
	BTFSC STATUS,Z
	GOTO	label6
label5
	BTFSS mensajeCor_0001F_1_i+D'1',7
	GOTO	label7
label6
	BCF STATUS, RP0
	MOVF mensajeCor_0001F_1_posicio, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF mensajeCor_0001F_1_posicio+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BCF	STATUS,IRP
	MOVLW LOW(mensajeCor_0001F_1_mensaje+D'0')
	MOVWF FSR
	BSF STATUS, RP0
	MOVF mensajeCor_0001F_1_i, W
	ADDWF FSR, F
	MOVF INDF, W
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	INCF mensajeCor_0001F_1_posicio, F
	BTFSC STATUS,Z
	INCF mensajeCor_0001F_1_posicio+D'1', F
	BSF STATUS, RP0
	INCF mensajeCor_0001F_1_i, F
	BTFSC STATUS,Z
	INCF mensajeCor_0001F_1_i+D'1', F
	GOTO	label4
label7
	MOVLW 0x80
	BCF STATUS, RP0
	MOVWF gbl_cont
	CLRF gbl_cont+D'1'
	CLRF gbl_posicion
	CLRF gbl_posicion+D'1'
	CLRF gbl_contadorIntento
	CLRF gbl_contadorIntento+D'1'
	RETURN
; } mensajeCorrecto function end

	ORG 0x00000095
transmitir_00000
; { transmitir ; function begin
label8
	BTFSS gbl_pir1,4
	GOTO	label8
	MOVF transmitir_00000_arg_date, W
	MOVWF gbl_txreg
	RETURN
; } transmitir function end

	ORG 0x0000009A
habilitarT_00013
; { habilitarTransmisionSerial ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	BSF gbl_rcsta,7
	BSF STATUS, RP0
	BCF gbl_txsta,4
	BCF gbl_txsta,6
	BSF gbl_txsta,2
	MOVLW 0x19
	MOVWF gbl_spbrg
	BSF gbl_pie1,4
	BSF gbl_txsta,5
	RETURN
; } habilitarTransmisionSerial function end

	ORG 0x000000A6
mostrarMen_00017
; { mostrarMensajeBloqueoTerminal ; function begin
	CALL habilitarT_00013
	MOVLW 0x20
	MOVWF mostrarMen_00017_1_mensaje_00018+D'2'
	MOVWF mostrarMen_00017_1_mensaje_00018+D'7'
	MOVWF mostrarMen_00017_1_mensaje_00018+D'12'
	MOVLW 0x41
	MOVWF mostrarMen_00017_1_mensaje_00018+D'1'
	MOVWF mostrarMen_00017_1_mensaje_00018+D'4'
	MOVWF mostrarMen_00017_1_mensaje_00018+D'6'
	MOVWF mostrarMen_00017_1_mensaje_00018+D'11'
	MOVWF mostrarMen_00017_1_mensaje_00018+D'19'
	MOVWF mostrarMen_00017_1_mensaje_00018+D'21'
	MOVWF mostrarMen_00017_1_mensaje_00018+D'22'
	MOVLW 0x42
	MOVWF mostrarMen_00017_1_mensaje_00018+D'13'
	MOVLW 0x43
	MOVWF mostrarMen_00017_1_mensaje_00018+D'3'
	MOVLW 0x44
	MOVWF mostrarMen_00017_1_mensaje_00018+D'20'
	MOVLW 0x45
	MOVWF mostrarMen_00017_1_mensaje_00018+D'8'
	MOVWF mostrarMen_00017_1_mensaje_00018+D'18'
	MOVLW 0x4A
	MOVWF mostrarMen_00017_1_mensaje_00018+D'5'
	MOVLW 0x4C
	MOVWF mostrarMen_00017_1_mensaje_00018
	MOVWF mostrarMen_00017_1_mensaje_00018+D'14'
	MOVLW 0x4F
	MOVWF mostrarMen_00017_1_mensaje_00018+D'15'
	MOVLW 0x51
	MOVWF mostrarMen_00017_1_mensaje_00018+D'16'
	MOVLW 0x53
	MOVWF mostrarMen_00017_1_mensaje_00018+D'9'
	MOVLW 0x54
	MOVWF mostrarMen_00017_1_mensaje_00018+D'10'
	MOVLW 0x55
	MOVWF mostrarMen_00017_1_mensaje_00018+D'17'
	CLRF mostrarMen_00017_1_mensaje_00018+D'23'
	BCF STATUS, RP0
	CLRF mostrarMen_00017_1_i
	CLRF mostrarMen_00017_1_i+D'1'
label9
	MOVLW 0x18
	SUBWF mostrarMen_00017_1_i, W
	MOVF mostrarMen_00017_1_i+D'1', W
	BTFSC STATUS,C
	GOTO	label10
	BTFSC STATUS,Z
	GOTO	label11
label10
	BTFSS mostrarMen_00017_1_i+D'1',7
	RETURN
label11
	BCF	STATUS,IRP
	MOVLW LOW(mostrarMen_00017_1_mensaje_00018+D'0')
	MOVWF FSR
	MOVF mostrarMen_00017_1_i, W
	ADDWF FSR, F
	MOVF INDF, W
	MOVWF transmitir_00000_arg_date
	CLRF transmitir_00000_arg_date+D'1'
	CALL transmitir_00000
	INCF gbl_cont, F
	BTFSC STATUS,Z
	INCF gbl_cont+D'1', F
	INCF mostrarMen_00017_1_i, F
	BTFSC STATUS,Z
	INCF mostrarMen_00017_1_i+D'1', F
	GOTO	label9
; } mostrarMensajeBloqueoTerminal function end

	ORG 0x000000E8
limpiarLCD_00000
; { limpiarLCD ; function begin
	MOVLW 0x80
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_cont
	CLRF gbl_cont+D'1'
	CLRF gbl_posicion
	CLRF gbl_posicion+D'1'
	MOVLW 0x01
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	CLRF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	MOVLW 0x0F
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	RETURN
; } limpiarLCD function end

	ORG 0x000000F8
desactivar_00014
; { desactivarTransmisionSerial ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	BCF gbl_rcsta,7
	BSF STATUS, RP0
	BCF gbl_pie1,4
	BCF gbl_txsta,5
	BCF STATUS, RP0
	CLRF gbl_portc
	RETURN
; } desactivarTransmisionSerial function end

	ORG 0x00000101
reiniciarC_00024
; { reiniciarClaveIngresada ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	CLRF reiniciarC_00024_1_i
	CLRF reiniciarC_00024_1_i+D'1'
label12
	MOVLW 0x08
	SUBWF reiniciarC_00024_1_i, W
	MOVF reiniciarC_00024_1_i+D'1', W
	BTFSC STATUS,C
	GOTO	label13
	BTFSC STATUS,Z
	GOTO	label14
label13
	BTFSS reiniciarC_00024_1_i+D'1',7
	RETURN
label14
	BCF	STATUS,IRP
	MOVLW LOW(gbl_contrasenaIngresada+D'0')
	MOVWF FSR
	MOVF reiniciarC_00024_1_i, W
	ADDWF FSR, F
	MOVLW 0x00
	MOVWF INDF
	INCF reiniciarC_00024_1_i, F
	BTFSC STATUS,Z
	INCF reiniciarC_00024_1_i+D'1', F
	GOTO	label12
; } reiniciarClaveIngresada function end

	ORG 0x00000119
reiniciarC_00023
; { reiniciarClave ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	CLRF reiniciarC_00023_1_i
	CLRF reiniciarC_00023_1_i+D'1'
label15
	MOVLW 0x08
	SUBWF reiniciarC_00023_1_i, W
	MOVF reiniciarC_00023_1_i+D'1', W
	BTFSC STATUS,C
	GOTO	label16
	BTFSC STATUS,Z
	GOTO	label17
label16
	BTFSS reiniciarC_00023_1_i+D'1',7
	RETURN
label17
	BCF	STATUS,IRP
	MOVLW LOW(gbl_contrasena+D'0')
	MOVWF FSR
	MOVF reiniciarC_00023_1_i, W
	ADDWF FSR, F
	MOVLW 0x00
	MOVWF INDF
	INCF reiniciarC_00023_1_i, F
	BTFSC STATUS,Z
	INCF reiniciarC_00023_1_i+D'1', F
	GOTO	label15
; } reiniciarClave function end

	ORG 0x00000131
mensajeInc_00022
; { mensajeIncorrecto ; function begin
	MOVLW 0x43
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF mensajeInc_00022_1_mensaje+D'2'
	MOVWF mensajeInc_00022_1_mensaje+D'7'
	MOVLW 0x45
	MOVWF mensajeInc_00022_1_mensaje+D'6'
	MOVLW 0x49
	MOVWF mensajeInc_00022_1_mensaje
	MOVLW 0x4E
	MOVWF mensajeInc_00022_1_mensaje+D'1'
	MOVLW 0x4F
	MOVWF mensajeInc_00022_1_mensaje+D'3'
	MOVWF mensajeInc_00022_1_mensaje+D'9'
	MOVLW 0x52
	MOVWF mensajeInc_00022_1_mensaje+D'4'
	MOVWF mensajeInc_00022_1_mensaje+D'5'
	MOVLW 0x54
	MOVWF mensajeInc_00022_1_mensaje+D'8'
	CLRF mensajeInc_00022_1_mensaje+D'10'
	MOVLW 0x80
	MOVWF mensajeInc_00022_1_posicio
	CLRF mensajeInc_00022_1_posicio+D'1'
	CLRF mensajeInc_00022_1_i
	CLRF mensajeInc_00022_1_i+D'1'
label18
	MOVLW 0x0B
	SUBWF mensajeInc_00022_1_i, W
	MOVF mensajeInc_00022_1_i+D'1', W
	BTFSC STATUS,C
	GOTO	label19
	BTFSC STATUS,Z
	GOTO	label20
label19
	BTFSS mensajeInc_00022_1_i+D'1',7
	GOTO	label21
label20
	MOVF mensajeInc_00022_1_posicio, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF mensajeInc_00022_1_posicio+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BCF	STATUS,IRP
	MOVLW LOW(mensajeInc_00022_1_mensaje+D'0')
	MOVWF FSR
	MOVF mensajeInc_00022_1_i, W
	ADDWF FSR, F
	MOVF INDF, W
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	INCF mensajeInc_00022_1_posicio, F
	BTFSC STATUS,Z
	INCF mensajeInc_00022_1_posicio+D'1', F
	INCF mensajeInc_00022_1_i, F
	BTFSC STATUS,Z
	INCF mensajeInc_00022_1_i+D'1', F
	GOTO	label18
label21
	MOVLW 0x03
	XORWF gbl_contadorIntento, W
	BTFSC STATUS,Z
	MOVF gbl_contadorIntento+D'1', W
	BTFSS STATUS,Z
	GOTO	label22
	CALL mostrarMen_00017
	CALL desactivar_00014
	BSF gbl_intcon,1
	GOTO	label23
label22
	MOVF gbl_contadorIntento, F
	MOVF gbl_contadorIntento+D'1', F
	INCF gbl_contadorIntento, F
	BTFSC STATUS,Z
	INCF gbl_contadorIntento+D'1', F
label23
	MOVLW 0x80
	MOVWF gbl_cont
	CLRF gbl_cont+D'1'
	CLRF gbl_posicion
	CLRF gbl_posicion+D'1'
	RETURN
; } mensajeIncorrecto function end

	ORG 0x00000181
mensajeErr_00021
; { mensajeErrorCambio ; function begin
	CALL limpiarLCD_00000
	MOVLW 0x20
	MOVWF mensajeErr_00021_1_mensaje+D'5'
	MOVWF mensajeErr_00021_1_mensaje+D'8'
	MOVLW 0x41
	MOVWF mensajeErr_00021_1_mensaje+D'10'
	MOVLW 0x42
	MOVWF mensajeErr_00021_1_mensaje+D'12'
	MOVLW 0x43
	MOVWF mensajeErr_00021_1_mensaje+D'9'
	MOVLW 0x45
	MOVWF mensajeErr_00021_1_mensaje
	MOVWF mensajeErr_00021_1_mensaje+D'6'
	MOVLW 0x49
	MOVWF mensajeErr_00021_1_mensaje+D'13'
	MOVLW 0x4D
	MOVWF mensajeErr_00021_1_mensaje+D'11'
	MOVLW 0x4E
	MOVWF mensajeErr_00021_1_mensaje+D'7'
	MOVLW 0x4F
	MOVWF mensajeErr_00021_1_mensaje+D'3'
	MOVWF mensajeErr_00021_1_mensaje+D'14'
	MOVLW 0x52
	MOVWF mensajeErr_00021_1_mensaje+D'1'
	MOVWF mensajeErr_00021_1_mensaje+D'2'
	MOVWF mensajeErr_00021_1_mensaje+D'4'
	CLRF mensajeErr_00021_1_mensaje+D'15'
	MOVLW 0x80
	MOVWF mensajeErr_00021_1_posicio
	CLRF mensajeErr_00021_1_posicio+D'1'
	CLRF mensajeErr_00021_1_i
	CLRF mensajeErr_00021_1_i+D'1'
label24
	MOVLW 0x10
	SUBWF mensajeErr_00021_1_i, W
	MOVF mensajeErr_00021_1_i+D'1', W
	BTFSC STATUS,C
	GOTO	label25
	BTFSC STATUS,Z
	GOTO	label26
label25
	BTFSS mensajeErr_00021_1_i+D'1',7
	GOTO	label27
label26
	MOVF mensajeErr_00021_1_posicio, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF mensajeErr_00021_1_posicio+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BCF	STATUS,IRP
	MOVLW LOW(mensajeErr_00021_1_mensaje+D'0')
	MOVWF FSR
	MOVF mensajeErr_00021_1_i, W
	ADDWF FSR, F
	MOVF INDF, W
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	INCF mensajeErr_00021_1_posicio, F
	BTFSC STATUS,Z
	INCF mensajeErr_00021_1_posicio+D'1', F
	INCF mensajeErr_00021_1_i, F
	BTFSC STATUS,Z
	INCF mensajeErr_00021_1_i+D'1', F
	GOTO	label24
label27
	CLRF gbl_contadorIntento
	CLRF gbl_contadorIntento+D'1'
	RETURN
; } mensajeErrorCambio function end

	ORG 0x000001C6
mensajeCam_00020
; { mensajeCambioContrasena ; function begin
	CALL limpiarLCD_00000
	MOVLW 0x20
	MOVWF mensajeCam_00020_1_mensaje+D'6'
	MOVLW 0x41
	MOVWF mensajeCam_00020_1_mensaje+D'1'
	MOVLW 0x42
	MOVWF mensajeCam_00020_1_mensaje+D'3'
	MOVLW 0x43
	MOVWF mensajeCam_00020_1_mensaje
	MOVLW 0x49
	MOVWF mensajeCam_00020_1_mensaje+D'4'
	MOVLW 0x4B
	MOVWF mensajeCam_00020_1_mensaje+D'8'
	MOVLW 0x4D
	MOVWF mensajeCam_00020_1_mensaje+D'2'
	MOVLW 0x4F
	MOVWF mensajeCam_00020_1_mensaje+D'5'
	MOVWF mensajeCam_00020_1_mensaje+D'7'
	CLRF mensajeCam_00020_1_mensaje+D'9'
	MOVLW 0x80
	MOVWF mensajeCam_00020_1_posicio
	CLRF mensajeCam_00020_1_posicio+D'1'
	CLRF mensajeCam_00020_1_i
	CLRF mensajeCam_00020_1_i+D'1'
label28
	MOVLW 0x0A
	SUBWF mensajeCam_00020_1_i, W
	MOVF mensajeCam_00020_1_i+D'1', W
	BTFSC STATUS,C
	GOTO	label29
	BTFSC STATUS,Z
	GOTO	label30
label29
	BTFSS mensajeCam_00020_1_i+D'1',7
	GOTO	label31
label30
	MOVF mensajeCam_00020_1_posicio, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF mensajeCam_00020_1_posicio+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BCF	STATUS,IRP
	MOVLW LOW(mensajeCam_00020_1_mensaje+D'0')
	MOVWF FSR
	MOVF mensajeCam_00020_1_i, W
	ADDWF FSR, F
	MOVF INDF, W
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	INCF mensajeCam_00020_1_posicio, F
	BTFSC STATUS,Z
	INCF mensajeCam_00020_1_posicio+D'1', F
	INCF mensajeCam_00020_1_i, F
	BTFSC STATUS,Z
	INCF mensajeCam_00020_1_i+D'1', F
	GOTO	label28
label31
	CLRF gbl_contadorIntento
	CLRF gbl_contadorIntento+D'1'
	RETURN
; } mensajeCambioContrasena function end

	ORG 0x00000203
validarCon_00025
; { validarContrasena ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	BSF validarCon_00025_1_condicion,0
	CLRF validarCon_00025_1_i
	CLRF validarCon_00025_1_i+D'1'
label32
	MOVLW 0x08
	SUBWF validarCon_00025_1_i, W
	MOVF validarCon_00025_1_i+D'1', W
	BTFSC STATUS,C
	GOTO	label33
	BTFSC STATUS,Z
	GOTO	label34
label33
	BTFSS validarCon_00025_1_i+D'1',7
	GOTO	label36
label34
	BCF	STATUS,IRP
	MOVLW LOW(gbl_contrasena+D'0')
	MOVWF FSR
	MOVF validarCon_00025_1_i, W
	MOVWF CompTempVar600
	MOVF CompTempVar600, W
	ADDWF FSR, F
	MOVF INDF, W
	MOVWF CompTempVar601
	BCF	STATUS,IRP
	MOVLW LOW(gbl_contrasenaIngresada+D'0')
	MOVWF FSR
	MOVF validarCon_00025_1_i, W
	ADDWF FSR, F
	MOVF CompTempVar601, W
	XORWF INDF, W
	BTFSC STATUS,Z
	GOTO	label35
	BCF validarCon_00025_1_condicion,0
	GOTO	label36
label35
	INCF validarCon_00025_1_i, F
	BTFSC STATUS,Z
	INCF validarCon_00025_1_i+D'1', F
	GOTO	label32
label36
	CALL limpiarLCD_00000
	BTFSS validarCon_00025_1_condicion,0
	GOTO	label37
	CALL mensajeCor_0001F
	MOVLW 0x0F
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	CLRF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BSF gbl_desbloqueado,0
	BSF gbl_bandera_modificar,3
	GOTO	label38
label37
	CALL mensajeInc_00022
	MOVLW 0x0F
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	CLRF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
label38
	CALL reiniciarC_00024
	CLRF gbl_posicion
	CLRF gbl_posicion+D'1'
	MOVLW 0x02
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	MOVLW 0x01
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	CLRF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	RETURN
; } validarContrasena function end

	ORG 0x00000247
mostrarMen_0001E
; { mostrarMensajeConfirmar ; function begin
	CALL limpiarLCD_00000
	MOVLW 0x20
	MOVWF mostrarMen_0001E_1_mensaje+D'8'
	MOVLW 0x41
	MOVWF mostrarMen_0001E_1_mensaje+D'11'
	MOVLW 0x43
	MOVWF mostrarMen_0001E_1_mensaje
	MOVWF mostrarMen_0001E_1_mensaje+D'9'
	MOVLW 0x45
	MOVWF mostrarMen_0001E_1_mensaje+D'7'
	MOVWF mostrarMen_0001E_1_mensaje+D'13'
	MOVLW 0x46
	MOVWF mostrarMen_0001E_1_mensaje+D'3'
	MOVLW 0x49
	MOVWF mostrarMen_0001E_1_mensaje+D'4'
	MOVLW 0x4C
	MOVWF mostrarMen_0001E_1_mensaje+D'10'
	MOVLW 0x4D
	MOVWF mostrarMen_0001E_1_mensaje+D'6'
	MOVLW 0x4E
	MOVWF mostrarMen_0001E_1_mensaje+D'2'
	MOVLW 0x4F
	MOVWF mostrarMen_0001E_1_mensaje+D'1'
	MOVLW 0x52
	MOVWF mostrarMen_0001E_1_mensaje+D'5'
	MOVLW 0x56
	MOVWF mostrarMen_0001E_1_mensaje+D'12'
	CLRF mostrarMen_0001E_1_mensaje+D'14'
	CLRF mostrarMen_0001E_1_i
	CLRF mostrarMen_0001E_1_i+D'1'
label39
	MOVLW 0x0F
	SUBWF mostrarMen_0001E_1_i, W
	MOVF mostrarMen_0001E_1_i+D'1', W
	BTFSC STATUS,C
	GOTO	label40
	BTFSC STATUS,Z
	GOTO	label41
label40
	BTFSS mostrarMen_0001E_1_i+D'1',7
	GOTO	label42
label41
	MOVF gbl_cont, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF gbl_cont+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BCF	STATUS,IRP
	MOVLW LOW(mostrarMen_0001E_1_mensaje+D'0')
	MOVWF FSR
	MOVF mostrarMen_0001E_1_i, W
	ADDWF FSR, F
	MOVF INDF, W
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	INCF gbl_cont, F
	BTFSC STATUS,Z
	INCF gbl_cont+D'1', F
	INCF mostrarMen_0001E_1_i, F
	BTFSC STATUS,Z
	INCF mostrarMen_0001E_1_i+D'1', F
	GOTO	label39
label42
	MOVLW 0x01
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	RETURN
; } mostrarMensajeConfirmar function end

	ORG 0x0000028B
mostrarMen_0001D
; { mostrarMensajeIngresoContrasena ; function begin
	CALL limpiarLCD_00000
	MOVLW 0x20
	MOVWF mostrarMen_0001D_1_mensaje+D'5'
	MOVLW 0x41
	MOVWF mostrarMen_0001D_1_mensaje+D'4'
	MOVWF mostrarMen_0001D_1_mensaje+D'8'
	MOVLW 0x43
	MOVWF mostrarMen_0001D_1_mensaje+D'6'
	MOVLW 0x45
	MOVWF mostrarMen_0001D_1_mensaje+D'2'
	MOVWF mostrarMen_0001D_1_mensaje+D'10'
	MOVLW 0x4C
	MOVWF mostrarMen_0001D_1_mensaje+D'7'
	MOVLW 0x4E
	MOVWF mostrarMen_0001D_1_mensaje
	MOVLW 0x55
	MOVWF mostrarMen_0001D_1_mensaje+D'1'
	MOVLW 0x56
	MOVWF mostrarMen_0001D_1_mensaje+D'3'
	MOVWF mostrarMen_0001D_1_mensaje+D'9'
	CLRF mostrarMen_0001D_1_mensaje+D'11'
	CLRF mostrarMen_0001D_1_i
	CLRF mostrarMen_0001D_1_i+D'1'
label43
	MOVLW 0x0C
	SUBWF mostrarMen_0001D_1_i, W
	MOVF mostrarMen_0001D_1_i+D'1', W
	BTFSC STATUS,C
	GOTO	label44
	BTFSC STATUS,Z
	GOTO	label45
label44
	BTFSS mostrarMen_0001D_1_i+D'1',7
	GOTO	label46
label45
	MOVF gbl_cont, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF gbl_cont+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BCF	STATUS,IRP
	MOVLW LOW(mostrarMen_0001D_1_mensaje+D'0')
	MOVWF FSR
	MOVF mostrarMen_0001D_1_i, W
	ADDWF FSR, F
	MOVF INDF, W
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	INCF gbl_cont, F
	BTFSC STATUS,Z
	INCF gbl_cont+D'1', F
	INCF mostrarMen_0001D_1_i, F
	BTFSC STATUS,Z
	INCF mostrarMen_0001D_1_i+D'1', F
	GOTO	label43
label46
	MOVLW 0x01
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	RETURN
; } mostrarMensajeIngresoContrasena function end

	ORG 0x000002C8
mostrarMen_0001C
; { mostrarMensajeBloqueo ; function begin
	CALL limpiarLCD_00000
	MOVLW 0x20
	MOVWF mostrarMen_0001C_1_mensaje+D'7'
	MOVLW 0x41
	MOVWF mostrarMen_0001C_1_mensaje+D'10'
	MOVLW 0x45
	MOVWF mostrarMen_0001C_1_mensaje+D'3'
	MOVWF mostrarMen_0001C_1_mensaje+D'6'
	MOVWF mostrarMen_0001C_1_mensaje+D'12'
	MOVLW 0x49
	MOVWF mostrarMen_0001C_1_mensaje
	MOVLW 0x4C
	MOVWF mostrarMen_0001C_1_mensaje+D'8'
	MOVWF mostrarMen_0001C_1_mensaje+D'9'
	MOVLW 0x4E
	MOVWF mostrarMen_0001C_1_mensaje+D'1'
	MOVLW 0x52
	MOVWF mostrarMen_0001C_1_mensaje+D'4'
	MOVLW 0x53
	MOVWF mostrarMen_0001C_1_mensaje+D'2'
	MOVLW 0x54
	MOVWF mostrarMen_0001C_1_mensaje+D'5'
	MOVLW 0x56
	MOVWF mostrarMen_0001C_1_mensaje+D'11'
	CLRF mostrarMen_0001C_1_mensaje+D'13'
	CLRF mostrarMen_0001C_1_i
	CLRF mostrarMen_0001C_1_i+D'1'
label47
	MOVLW 0x0E
	SUBWF mostrarMen_0001C_1_i, W
	MOVF mostrarMen_0001C_1_i+D'1', W
	BTFSC STATUS,C
	GOTO	label48
	BTFSC STATUS,Z
	GOTO	label49
label48
	BTFSS mostrarMen_0001C_1_i+D'1',7
	GOTO	label50
label49
	MOVF gbl_cont, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF gbl_cont+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BCF	STATUS,IRP
	MOVLW LOW(mostrarMen_0001C_1_mensaje+D'0')
	MOVWF FSR
	MOVF mostrarMen_0001C_1_i, W
	ADDWF FSR, F
	MOVF INDF, W
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	INCF gbl_cont, F
	BTFSC STATUS,Z
	INCF gbl_cont+D'1', F
	INCF mostrarMen_0001C_1_i, F
	BTFSC STATUS,Z
	INCF mostrarMen_0001C_1_i+D'1', F
	GOTO	label47
label50
	MOVLW 0x01
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	RETURN
; } mostrarMensajeBloqueo function end

	ORG 0x00000309
mostrarMen_00019
; { mostrarMensajeDesbloqueoTerminal ; function begin
	CALL habilitarT_00013
	MOVLW 0x20
	BCF STATUS, RP0
	MOVWF mostrarMen_00019_1_mensaje+D'6'
	MOVLW 0x2D
	MOVWF mostrarMen_00019_1_mensaje
	MOVWF mostrarMen_00019_1_mensaje+D'1'
	MOVWF mostrarMen_00019_1_mensaje+D'19'
	MOVWF mostrarMen_00019_1_mensaje+D'20'
	MOVLW 0x41
	MOVWF mostrarMen_00019_1_mensaje+D'3'
	MOVWF mostrarMen_00019_1_mensaje+D'5'
	MOVWF mostrarMen_00019_1_mensaje+D'16'
	MOVWF mostrarMen_00019_1_mensaje+D'18'
	MOVLW 0x42
	MOVWF mostrarMen_00019_1_mensaje+D'10'
	MOVLW 0x43
	MOVWF mostrarMen_00019_1_mensaje+D'2'
	MOVLW 0x44
	MOVWF mostrarMen_00019_1_mensaje+D'7'
	MOVWF mostrarMen_00019_1_mensaje+D'17'
	MOVLW 0x45
	MOVWF mostrarMen_00019_1_mensaje+D'8'
	MOVWF mostrarMen_00019_1_mensaje+D'15'
	MOVLW 0x4A
	MOVWF mostrarMen_00019_1_mensaje+D'4'
	MOVLW 0x4C
	MOVWF mostrarMen_00019_1_mensaje+D'11'
	MOVLW 0x4F
	MOVWF mostrarMen_00019_1_mensaje+D'12'
	MOVLW 0x51
	MOVWF mostrarMen_00019_1_mensaje+D'13'
	MOVLW 0x53
	MOVWF mostrarMen_00019_1_mensaje+D'9'
	MOVLW 0x55
	MOVWF mostrarMen_00019_1_mensaje+D'14'
	CLRF mostrarMen_00019_1_mensaje+D'21'
	CLRF mostrarMen_00019_1_i
	CLRF mostrarMen_00019_1_i+D'1'
label51
	MOVLW 0x16
	SUBWF mostrarMen_00019_1_i, W
	MOVF mostrarMen_00019_1_i+D'1', W
	BTFSC STATUS,C
	GOTO	label52
	BTFSC STATUS,Z
	GOTO	label53
label52
	BTFSS mostrarMen_00019_1_i+D'1',7
	RETURN
label53
	BCF	STATUS,IRP
	MOVLW LOW(mostrarMen_00019_1_mensaje+D'0')
	MOVWF FSR
	MOVF mostrarMen_00019_1_i, W
	ADDWF FSR, F
	MOVF INDF, W
	MOVWF transmitir_00000_arg_date
	CLRF transmitir_00000_arg_date+D'1'
	CALL transmitir_00000
	INCF gbl_cont, F
	BTFSC STATUS,Z
	INCF gbl_cont+D'1', F
	INCF mostrarMen_00019_1_i, F
	BTFSC STATUS,Z
	INCF mostrarMen_00019_1_i+D'1', F
	GOTO	label51
; } mostrarMensajeDesbloqueoTerminal function end

	ORG 0x00000349
cambiarCla_00026
; { cambiarClave ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVF gbl_posicion_confirmar_contra, W
	XORWF gbl_posicion_nueva_contra, W
	BTFSS STATUS,Z
	GOTO	label66
	MOVF gbl_posicion_confirmar_contra+D'1', W
	XORWF gbl_posicion_nueva_contra+D'1', W
	BTFSS STATUS,Z
	GOTO	label66
	MOVF gbl_posicion_nueva_contra+D'1', W
	XORLW 0x80
	MOVWF CompTempVar602
	MOVLW 0x80
	SUBWF CompTempVar602, W
	BTFSS STATUS,Z
	GOTO	label54
	MOVLW 0x04
	SUBWF gbl_posicion_nueva_contra, W
label54
	BTFSS STATUS,C
	GOTO	label65
	MOVLW 0x80
	MOVWF CompTempVar603
	MOVF gbl_posicion_nueva_contra+D'1', W
	XORLW 0x80
	SUBWF CompTempVar603, W
	MOVF gbl_posicion_nueva_contra, W
	MOVF gbl_posicion_nueva_contra+D'1', F
	BTFSC STATUS,Z
	SUBLW 0x08
	BTFSS STATUS,C
	GOTO	label65
	BSF cambiarCla_00026_5_condicion,0
	CLRF cambiarCla_00026_5_i
	CLRF cambiarCla_00026_5_i+D'1'
label55
	MOVLW 0x08
	SUBWF cambiarCla_00026_5_i, W
	MOVF cambiarCla_00026_5_i+D'1', W
	BTFSC STATUS,C
	GOTO	label56
	BTFSC STATUS,Z
	GOTO	label57
label56
	BTFSS cambiarCla_00026_5_i+D'1',7
	GOTO	label59
label57
	BCF	STATUS,IRP
	MOVLW LOW(gbl_claveConfirmar+D'0')
	MOVWF FSR
	MOVF cambiarCla_00026_5_i, W
	MOVWF CompTempVar606
	MOVF CompTempVar606, W
	ADDWF FSR, F
	MOVF INDF, W
	MOVWF CompTempVar607
	BCF	STATUS,IRP
	MOVLW LOW(gbl_nuevaContrasena+D'0')
	MOVWF FSR
	MOVF cambiarCla_00026_5_i, W
	ADDWF FSR, F
	MOVF CompTempVar607, W
	XORWF INDF, W
	BTFSC STATUS,Z
	GOTO	label58
	BCF cambiarCla_00026_5_condicion,0
	GOTO	label59
label58
	INCF cambiarCla_00026_5_i, F
	BTFSC STATUS,Z
	INCF cambiarCla_00026_5_i+D'1', F
	GOTO	label55
label59
	BTFSS cambiarCla_00026_5_condicion,0
	GOTO	label64
	CALL reiniciarC_00023
	CLRF cambiarCla_00026_5_i
	CLRF cambiarCla_00026_5_i+D'1'
label60
	MOVLW 0x08
	SUBWF cambiarCla_00026_5_i, W
	MOVF cambiarCla_00026_5_i+D'1', W
	BTFSC STATUS,C
	GOTO	label61
	BTFSC STATUS,Z
	GOTO	label62
label61
	BTFSS cambiarCla_00026_5_i+D'1',7
	GOTO	label63
label62
	BCF	STATUS,IRP
	MOVLW LOW(gbl_nuevaContrasena+D'0')
	MOVWF FSR
	MOVF cambiarCla_00026_5_i, W
	MOVWF CompTempVar610
	MOVF CompTempVar610, W
	ADDWF FSR, F
	MOVF INDF, W
	MOVWF CompTempVar611
	BCF	STATUS,IRP
	MOVLW LOW(gbl_contrasena+D'0')
	MOVWF FSR
	MOVF cambiarCla_00026_5_i, W
	ADDWF FSR, F
	MOVF CompTempVar611, W
	MOVWF INDF
	INCF cambiarCla_00026_5_i, F
	BTFSC STATUS,Z
	INCF cambiarCla_00026_5_i+D'1', F
	GOTO	label60
label63
	CALL mensajeCam_00020
	GOTO	label67
label64
	CALL mensajeErr_00021
	GOTO	label67
label65
	CALL mensajeErr_00021
	GOTO	label67
label66
	CALL mensajeErr_00021
label67
	BCF gbl_bandera_configuracion,1
	BCF gbl_bandera_confirmacion_cambio,2
	CLRF gbl_posicion_confirmar_contra
	CLRF gbl_posicion_confirmar_contra+D'1'
	CLRF gbl_posicion_nueva_contra
	CLRF gbl_posicion_nueva_contra+D'1'
	MOVLW 0x01
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	RETURN
; } cambiarClave function end

	ORG 0x000003C0
mensajeIng_0001B
; { mensajeIngresoContrasena ; function begin
	MOVLW 0x20
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF mensajeIng_0001B_1_mensaje+D'7'
	MOVLW 0x41
	MOVWF mensajeIng_0001B_1_mensaje+D'10'
	MOVLW 0x43
	MOVWF mensajeIng_0001B_1_mensaje+D'8'
	MOVLW 0x45
	MOVWF mensajeIng_0001B_1_mensaje+D'3'
	MOVWF mensajeIng_0001B_1_mensaje+D'6'
	MOVWF mensajeIng_0001B_1_mensaje+D'12'
	MOVLW 0x49
	MOVWF mensajeIng_0001B_1_mensaje
	MOVLW 0x4C
	MOVWF mensajeIng_0001B_1_mensaje+D'9'
	MOVLW 0x4E
	MOVWF mensajeIng_0001B_1_mensaje+D'1'
	MOVLW 0x52
	MOVWF mensajeIng_0001B_1_mensaje+D'4'
	MOVLW 0x53
	MOVWF mensajeIng_0001B_1_mensaje+D'2'
	MOVLW 0x54
	MOVWF mensajeIng_0001B_1_mensaje+D'5'
	MOVLW 0x56
	MOVWF mensajeIng_0001B_1_mensaje+D'11'
	CLRF mensajeIng_0001B_1_mensaje+D'13'
	CLRF mensajeIng_0001B_1_i
	CLRF mensajeIng_0001B_1_i+D'1'
label68
	MOVLW 0x0E
	SUBWF mensajeIng_0001B_1_i, W
	MOVF mensajeIng_0001B_1_i+D'1', W
	BTFSC STATUS,C
	GOTO	label69
	BTFSC STATUS,Z
	GOTO	label70
label69
	BTFSS mensajeIng_0001B_1_i+D'1',7
	GOTO	label71
label70
	MOVF gbl_cont, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF gbl_cont+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BCF	STATUS,IRP
	MOVLW LOW(mensajeIng_0001B_1_mensaje+D'0')
	MOVWF FSR
	MOVF mensajeIng_0001B_1_i, W
	ADDWF FSR, F
	MOVF INDF, W
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	INCF gbl_cont, F
	BTFSC STATUS,Z
	INCF gbl_cont+D'1', F
	INCF mensajeIng_0001B_1_i, F
	BTFSC STATUS,Z
	INCF mensajeIng_0001B_1_i+D'1', F
	GOTO	label68
label71
	MOVLW 0x0F
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	CLRF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	MOVLW 0x80
	MOVWF gbl_cont
	CLRF gbl_cont+D'1'
	RETURN
; } mensajeIngresoContrasena function end

	ORG 0x00000408
mensajeCaj_0001A
; { mensajeCajaCerrada ; function begin
	MOVLW 0x20
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF mensajeCaj_0001A_1_mensaje+D'6'
	MOVLW 0x2B
	MOVWF mensajeCaj_0001A_1_mensaje
	MOVWF mensajeCaj_0001A_1_mensaje+D'1'
	MOVWF mensajeCaj_0001A_1_mensaje+D'14'
	MOVWF mensajeCaj_0001A_1_mensaje+D'15'
	MOVLW 0x41
	MOVWF mensajeCaj_0001A_1_mensaje+D'3'
	MOVWF mensajeCaj_0001A_1_mensaje+D'5'
	MOVWF mensajeCaj_0001A_1_mensaje+D'11'
	MOVWF mensajeCaj_0001A_1_mensaje+D'13'
	MOVLW 0x43
	MOVWF mensajeCaj_0001A_1_mensaje+D'2'
	MOVWF mensajeCaj_0001A_1_mensaje+D'7'
	MOVLW 0x44
	MOVWF mensajeCaj_0001A_1_mensaje+D'12'
	MOVLW 0x45
	MOVWF mensajeCaj_0001A_1_mensaje+D'8'
	MOVLW 0x4A
	MOVWF mensajeCaj_0001A_1_mensaje+D'4'
	MOVLW 0x52
	MOVWF mensajeCaj_0001A_1_mensaje+D'9'
	MOVWF mensajeCaj_0001A_1_mensaje+D'10'
	CLRF mensajeCaj_0001A_1_mensaje+D'16'
	CLRF mensajeCaj_0001A_1_i
	CLRF mensajeCaj_0001A_1_i+D'1'
label72
	MOVLW 0x11
	SUBWF mensajeCaj_0001A_1_i, W
	MOVF mensajeCaj_0001A_1_i+D'1', W
	BTFSC STATUS,C
	GOTO	label73
	BTFSC STATUS,Z
	GOTO	label74
label73
	BTFSS mensajeCaj_0001A_1_i+D'1',7
	GOTO	label75
label74
	MOVF gbl_cont, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF gbl_cont+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BCF	STATUS,IRP
	MOVLW LOW(mensajeCaj_0001A_1_mensaje+D'0')
	MOVWF FSR
	MOVF mensajeCaj_0001A_1_i, W
	ADDWF FSR, F
	MOVF INDF, W
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	INCF gbl_cont, F
	BTFSC STATUS,Z
	INCF gbl_cont+D'1', F
	INCF mensajeCaj_0001A_1_i, F
	BTFSC STATUS,Z
	INCF mensajeCaj_0001A_1_i+D'1', F
	GOTO	label72
label75
	MOVLW 0x0F
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	CLRF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	MOVLW 0x80
	MOVWF gbl_cont
	CLRF gbl_cont+D'1'
	RETURN
; } mensajeCajaCerrada function end

	ORG 0x00000450
main
; { main ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	CLRF gbl_trisc
	MOVLW 0xF1
	MOVWF gbl_trisb
	MOVLW 0x06
	MOVWF gbl_adcon1
	CLRF gbl_trisa
	BCF gbl_option_reg,7
	BSF gbl_intcon,3
	BSF gbl_intcon,7
	BSF gbl_intcon,4
	BCF STATUS, RP0
	CLRF gbl_portb
label76
	MOVLW 0x0E
	MOVWF gbl_porta
	MOVLW 0x39
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0x0D
	MOVWF gbl_porta
	MOVLW 0x39
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0x0B
	MOVWF gbl_porta
	MOVLW 0x39
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0x07
	MOVWF gbl_porta
	BTFSS gbl_portb,1
	GOTO	label77
	BCF gbl_desbloqueado,0
	BCF gbl_bandera_configuracion,1
	BCF gbl_bandera_confirmacion_cambio,2
	CALL mensajeCaj_0001A
	GOTO	label76
label77
	MOVLW 0x80
	XORWF gbl_cont, W
	BTFSC STATUS,Z
	MOVF gbl_cont+D'1', W
	BTFSS STATUS,Z
	GOTO	label78
	BTFSC gbl_desbloqueado,0
	GOTO	label78
	BTFSC gbl_bandera_configuracion,1
	GOTO	label78
	CALL mensajeIng_0001B
	GOTO	label76
label78
	MOVLW 0x80
	XORWF gbl_cont, W
	BTFSC STATUS,Z
	MOVF gbl_cont+D'1', W
	BTFSS STATUS,Z
	GOTO	label76
	BTFSS gbl_desbloqueado,0
	GOTO	label76
	BTFSS gbl_bandera_configuracion,1
	CALL mensajeCor_0001F
	GOTO	label76
; } main function end

	ORG 0x0000048D
_startup
	MOVLW 0x80
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_cont
	CLRF gbl_cont+D'1'
	MOVLW 0x31
	MOVWF gbl_contrasena
	MOVLW 0x32
	MOVWF gbl_contrasena+D'1'
	MOVLW 0x33
	MOVWF gbl_contrasena+D'2'
	MOVLW 0x34
	MOVWF gbl_contrasena+D'3'
	CLRF gbl_posicion_nueva_contra
	CLRF gbl_posicion_nueva_contra+D'1'
	CLRF gbl_posicion_confirmar_contra
	CLRF gbl_posicion_confirmar_contra+D'1'
	MOVLW 0x01
	MOVWF gbl_contadorIntento
	CLRF gbl_contadorIntento+D'1'
	BCF gbl_desbloqueado,0
	BCF gbl_bandera_configuracion,1
	BCF gbl_bandera_confirmacion_cambio,2
	BCF gbl_bandera_modificar,3
	CLRF gbl_posicion
	CLRF gbl_posicion+D'1'
	BCF PCLATH,3
	BCF PCLATH,4
	GOTO	main
	ORG 0x000004AA
interrupt
; { interrupt ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	BTFSC gbl_portb,1
	GOTO	label128
	MOVLW 0x80
	XORWF gbl_cont, W
	BTFSC STATUS,Z
	MOVF gbl_cont+D'1', W
	BTFSC STATUS,Z
	CALL limpiarLCD_00000
	BTFSS gbl_intcon,1
	GOTO	label80
	BTFSS gbl_portb,0
	GOTO	label80
	CALL mostrarMen_00019
	CALL desactivar_00014
	CALL limpiarLCD_00000
	MOVLW 0x01
	MOVWF gbl_contadorIntento
	CLRF gbl_contadorIntento+D'1'
	BSF gbl_intcon,7
	BCF gbl_intcon,1
	GOTO	label128
label80
	BTFSS gbl_intcon,1
	GOTO	label81
	BTFSC gbl_portb,0
	GOTO	label81
	CALL mostrarMen_0001C
	GOTO	label128
label81
	MOVF gbl_porta, W
	MOVWF interrupt_19_a
	CLRF interrupt_19_a+D'1'
	MOVF gbl_portb, W
	MOVWF interrupt_19_b
	CLRF interrupt_19_b+D'1'
	BCF gbl_intcon,0
	MOVLW 0x0E
	XORWF interrupt_19_a, W
	BTFSC STATUS,Z
	MOVF interrupt_19_a+D'1', W
	BTFSS STATUS,Z
	GOTO	label85
	MOVLW 0xE0
	XORWF interrupt_19_b, W
	BTFSC STATUS,Z
	MOVF interrupt_19_b+D'1', W
	BTFSS STATUS,Z
	GOTO	label85
	MOVF gbl_cont, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF gbl_cont+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	MOVLW 0x37
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	MOVLW 0x0F
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	CLRF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BTFSS gbl_bandera_configuracion,1
	GOTO	label83
	BTFSS gbl_bandera_confirmacion_cambio,2
	GOTO	label82
	BCF	STATUS,IRP
	MOVLW LOW(gbl_claveConfirmar+D'0')
	MOVWF FSR
	MOVF gbl_posicion_confirmar_contra, W
	ADDWF FSR, F
	MOVLW 0x37
	MOVWF INDF
	INCF gbl_posicion_confirmar_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_confirmar_contra+D'1', F
	GOTO	label84
label82
	BCF	STATUS,IRP
	MOVLW LOW(gbl_nuevaContrasena+D'0')
	MOVWF FSR
	MOVF gbl_posicion_nueva_contra, W
	ADDWF FSR, F
	MOVLW 0x37
	MOVWF INDF
	INCF gbl_posicion_nueva_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_nueva_contra+D'1', F
	GOTO	label84
label83
	BCF	STATUS,IRP
	MOVLW LOW(gbl_contrasenaIngresada+D'0')
	MOVWF FSR
	MOVF gbl_posicion, W
	ADDWF FSR, F
	MOVLW 0x37
	MOVWF INDF
	INCF gbl_posicion, F
	BTFSC STATUS,Z
	INCF gbl_posicion+D'1', F
label84
	INCF gbl_cont, F
	BTFSC STATUS,Z
	INCF gbl_cont+D'1', F
	GOTO	label127
label85
	MOVLW 0x0E
	XORWF interrupt_19_a, W
	BTFSC STATUS,Z
	MOVF interrupt_19_a+D'1', W
	BTFSS STATUS,Z
	GOTO	label89
	MOVLW 0xD0
	XORWF interrupt_19_b, W
	BTFSC STATUS,Z
	MOVF interrupt_19_b+D'1', W
	BTFSS STATUS,Z
	GOTO	label89
	MOVF gbl_cont, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF gbl_cont+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	MOVLW 0x38
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	MOVLW 0x0F
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	CLRF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BTFSS gbl_bandera_configuracion,1
	GOTO	label87
	BTFSS gbl_bandera_confirmacion_cambio,2
	GOTO	label86
	BCF	STATUS,IRP
	MOVLW LOW(gbl_claveConfirmar+D'0')
	MOVWF FSR
	MOVF gbl_posicion_confirmar_contra, W
	ADDWF FSR, F
	MOVLW 0x38
	MOVWF INDF
	INCF gbl_posicion_confirmar_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_confirmar_contra+D'1', F
	GOTO	label88
label86
	BCF	STATUS,IRP
	MOVLW LOW(gbl_nuevaContrasena+D'0')
	MOVWF FSR
	MOVF gbl_posicion_nueva_contra, W
	ADDWF FSR, F
	MOVLW 0x38
	MOVWF INDF
	INCF gbl_posicion_nueva_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_nueva_contra+D'1', F
	GOTO	label88
label87
	BCF	STATUS,IRP
	MOVLW LOW(gbl_contrasenaIngresada+D'0')
	MOVWF FSR
	MOVF gbl_posicion, W
	ADDWF FSR, F
	MOVLW 0x38
	MOVWF INDF
	INCF gbl_posicion, F
	BTFSC STATUS,Z
	INCF gbl_posicion+D'1', F
label88
	INCF gbl_cont, F
	BTFSC STATUS,Z
	INCF gbl_cont+D'1', F
	GOTO	label127
label89
	MOVLW 0x0E
	XORWF interrupt_19_a, W
	BTFSC STATUS,Z
	MOVF interrupt_19_a+D'1', W
	BTFSS STATUS,Z
	GOTO	label93
	MOVLW 0xB0
	XORWF interrupt_19_b, W
	BTFSC STATUS,Z
	MOVF interrupt_19_b+D'1', W
	BTFSS STATUS,Z
	GOTO	label93
	MOVF gbl_cont, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF gbl_cont+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	MOVLW 0x39
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	MOVLW 0x0F
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	CLRF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BTFSS gbl_bandera_configuracion,1
	GOTO	label91
	BTFSS gbl_bandera_confirmacion_cambio,2
	GOTO	label90
	BCF	STATUS,IRP
	MOVLW LOW(gbl_claveConfirmar+D'0')
	MOVWF FSR
	MOVF gbl_posicion_confirmar_contra, W
	ADDWF FSR, F
	MOVLW 0x39
	MOVWF INDF
	INCF gbl_posicion_confirmar_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_confirmar_contra+D'1', F
	GOTO	label92
label90
	BCF	STATUS,IRP
	MOVLW LOW(gbl_nuevaContrasena+D'0')
	MOVWF FSR
	MOVF gbl_posicion_nueva_contra, W
	ADDWF FSR, F
	MOVLW 0x39
	MOVWF INDF
	INCF gbl_posicion_nueva_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_nueva_contra+D'1', F
	GOTO	label92
label91
	BCF	STATUS,IRP
	MOVLW LOW(gbl_contrasenaIngresada+D'0')
	MOVWF FSR
	MOVF gbl_posicion, W
	ADDWF FSR, F
	MOVLW 0x39
	MOVWF INDF
	INCF gbl_posicion, F
	BTFSC STATUS,Z
	INCF gbl_posicion+D'1', F
label92
	INCF gbl_cont, F
	BTFSC STATUS,Z
	INCF gbl_cont+D'1', F
	GOTO	label127
label93
	MOVLW 0x0D
	XORWF interrupt_19_a, W
	BTFSC STATUS,Z
	MOVF interrupt_19_a+D'1', W
	BTFSS STATUS,Z
	GOTO	label97
	MOVLW 0xE0
	XORWF interrupt_19_b, W
	BTFSC STATUS,Z
	MOVF interrupt_19_b+D'1', W
	BTFSS STATUS,Z
	GOTO	label97
	MOVF gbl_cont, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF gbl_cont+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	MOVLW 0x34
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	MOVLW 0x0F
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	CLRF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BTFSS gbl_bandera_configuracion,1
	GOTO	label95
	BTFSS gbl_bandera_confirmacion_cambio,2
	GOTO	label94
	BCF	STATUS,IRP
	MOVLW LOW(gbl_claveConfirmar+D'0')
	MOVWF FSR
	MOVF gbl_posicion_confirmar_contra, W
	ADDWF FSR, F
	MOVLW 0x34
	MOVWF INDF
	INCF gbl_posicion_confirmar_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_confirmar_contra+D'1', F
	GOTO	label96
label94
	BCF	STATUS,IRP
	MOVLW LOW(gbl_nuevaContrasena+D'0')
	MOVWF FSR
	MOVF gbl_posicion_nueva_contra, W
	ADDWF FSR, F
	MOVLW 0x34
	MOVWF INDF
	INCF gbl_posicion_nueva_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_nueva_contra+D'1', F
	GOTO	label96
label95
	BCF	STATUS,IRP
	MOVLW LOW(gbl_contrasenaIngresada+D'0')
	MOVWF FSR
	MOVF gbl_posicion, W
	ADDWF FSR, F
	MOVLW 0x34
	MOVWF INDF
	INCF gbl_posicion, F
	BTFSC STATUS,Z
	INCF gbl_posicion+D'1', F
label96
	INCF gbl_cont, F
	BTFSC STATUS,Z
	INCF gbl_cont+D'1', F
	GOTO	label127
label97
	MOVLW 0x0D
	XORWF interrupt_19_a, W
	BTFSC STATUS,Z
	MOVF interrupt_19_a+D'1', W
	BTFSS STATUS,Z
	GOTO	label101
	MOVLW 0xD0
	XORWF interrupt_19_b, W
	BTFSC STATUS,Z
	MOVF interrupt_19_b+D'1', W
	BTFSS STATUS,Z
	GOTO	label101
	MOVF gbl_cont, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF gbl_cont+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	MOVLW 0x35
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	MOVLW 0x0F
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	CLRF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BTFSS gbl_bandera_configuracion,1
	GOTO	label99
	BTFSS gbl_bandera_confirmacion_cambio,2
	GOTO	label98
	BCF	STATUS,IRP
	MOVLW LOW(gbl_claveConfirmar+D'0')
	MOVWF FSR
	MOVF gbl_posicion_confirmar_contra, W
	ADDWF FSR, F
	MOVLW 0x35
	MOVWF INDF
	INCF gbl_posicion_confirmar_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_confirmar_contra+D'1', F
	GOTO	label100
label98
	BCF	STATUS,IRP
	MOVLW LOW(gbl_nuevaContrasena+D'0')
	MOVWF FSR
	MOVF gbl_posicion_nueva_contra, W
	ADDWF FSR, F
	MOVLW 0x35
	MOVWF INDF
	INCF gbl_posicion_nueva_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_nueva_contra+D'1', F
	GOTO	label100
label99
	BCF	STATUS,IRP
	MOVLW LOW(gbl_contrasenaIngresada+D'0')
	MOVWF FSR
	MOVF gbl_posicion, W
	ADDWF FSR, F
	MOVLW 0x35
	MOVWF INDF
	INCF gbl_posicion, F
	BTFSC STATUS,Z
	INCF gbl_posicion+D'1', F
label100
	INCF gbl_cont, F
	BTFSC STATUS,Z
	INCF gbl_cont+D'1', F
	GOTO	label127
label101
	MOVLW 0x0D
	XORWF interrupt_19_a, W
	BTFSC STATUS,Z
	MOVF interrupt_19_a+D'1', W
	BTFSS STATUS,Z
	GOTO	label105
	MOVLW 0xB0
	XORWF interrupt_19_b, W
	BTFSC STATUS,Z
	MOVF interrupt_19_b+D'1', W
	BTFSS STATUS,Z
	GOTO	label105
	MOVF gbl_cont, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF gbl_cont+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	MOVLW 0x36
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	MOVLW 0x0F
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	CLRF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BTFSS gbl_bandera_configuracion,1
	GOTO	label103
	BTFSS gbl_bandera_confirmacion_cambio,2
	GOTO	label102
	BCF	STATUS,IRP
	MOVLW LOW(gbl_claveConfirmar+D'0')
	MOVWF FSR
	MOVF gbl_posicion_confirmar_contra, W
	ADDWF FSR, F
	MOVLW 0x36
	MOVWF INDF
	INCF gbl_posicion_confirmar_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_confirmar_contra+D'1', F
	GOTO	label104
label102
	BCF	STATUS,IRP
	MOVLW LOW(gbl_nuevaContrasena+D'0')
	MOVWF FSR
	MOVF gbl_posicion_nueva_contra, W
	ADDWF FSR, F
	MOVLW 0x36
	MOVWF INDF
	INCF gbl_posicion_nueva_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_nueva_contra+D'1', F
	GOTO	label104
label103
	BCF	STATUS,IRP
	MOVLW LOW(gbl_contrasenaIngresada+D'0')
	MOVWF FSR
	MOVF gbl_posicion, W
	ADDWF FSR, F
	MOVLW 0x36
	MOVWF INDF
	INCF gbl_posicion, F
	BTFSC STATUS,Z
	INCF gbl_posicion+D'1', F
label104
	INCF gbl_cont, F
	BTFSC STATUS,Z
	INCF gbl_cont+D'1', F
	GOTO	label127
label105
	MOVLW 0x0B
	XORWF interrupt_19_a, W
	BTFSC STATUS,Z
	MOVF interrupt_19_a+D'1', W
	BTFSS STATUS,Z
	GOTO	label109
	MOVLW 0xE0
	XORWF interrupt_19_b, W
	BTFSC STATUS,Z
	MOVF interrupt_19_b+D'1', W
	BTFSS STATUS,Z
	GOTO	label109
	MOVF gbl_cont, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF gbl_cont+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	MOVLW 0x31
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	MOVLW 0x0F
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	CLRF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BTFSS gbl_bandera_configuracion,1
	GOTO	label107
	BTFSS gbl_bandera_confirmacion_cambio,2
	GOTO	label106
	BCF	STATUS,IRP
	MOVLW LOW(gbl_claveConfirmar+D'0')
	MOVWF FSR
	MOVF gbl_posicion_confirmar_contra, W
	ADDWF FSR, F
	MOVLW 0x31
	MOVWF INDF
	INCF gbl_posicion_confirmar_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_confirmar_contra+D'1', F
	GOTO	label108
label106
	BCF	STATUS,IRP
	MOVLW LOW(gbl_nuevaContrasena+D'0')
	MOVWF FSR
	MOVF gbl_posicion_nueva_contra, W
	ADDWF FSR, F
	MOVLW 0x31
	MOVWF INDF
	INCF gbl_posicion_nueva_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_nueva_contra+D'1', F
	GOTO	label108
label107
	BCF	STATUS,IRP
	MOVLW LOW(gbl_contrasenaIngresada+D'0')
	MOVWF FSR
	MOVF gbl_posicion, W
	ADDWF FSR, F
	MOVLW 0x31
	MOVWF INDF
	INCF gbl_posicion, F
	BTFSC STATUS,Z
	INCF gbl_posicion+D'1', F
label108
	INCF gbl_cont, F
	BTFSC STATUS,Z
	INCF gbl_cont+D'1', F
	GOTO	label127
label109
	MOVLW 0x0B
	XORWF interrupt_19_a, W
	BTFSC STATUS,Z
	MOVF interrupt_19_a+D'1', W
	BTFSS STATUS,Z
	GOTO	label113
	MOVLW 0xD0
	XORWF interrupt_19_b, W
	BTFSC STATUS,Z
	MOVF interrupt_19_b+D'1', W
	BTFSS STATUS,Z
	GOTO	label113
	MOVF gbl_cont, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF gbl_cont+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	MOVLW 0x32
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	MOVLW 0x0F
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	CLRF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BTFSS gbl_bandera_configuracion,1
	GOTO	label111
	BTFSS gbl_bandera_confirmacion_cambio,2
	GOTO	label110
	BCF	STATUS,IRP
	MOVLW LOW(gbl_claveConfirmar+D'0')
	MOVWF FSR
	MOVF gbl_posicion_confirmar_contra, W
	ADDWF FSR, F
	MOVLW 0x32
	MOVWF INDF
	INCF gbl_posicion_confirmar_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_confirmar_contra+D'1', F
	GOTO	label112
label110
	BCF	STATUS,IRP
	MOVLW LOW(gbl_nuevaContrasena+D'0')
	MOVWF FSR
	MOVF gbl_posicion_nueva_contra, W
	ADDWF FSR, F
	MOVLW 0x32
	MOVWF INDF
	INCF gbl_posicion_nueva_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_nueva_contra+D'1', F
	GOTO	label112
label111
	BCF	STATUS,IRP
	MOVLW LOW(gbl_contrasenaIngresada+D'0')
	MOVWF FSR
	MOVF gbl_posicion, W
	ADDWF FSR, F
	MOVLW 0x32
	MOVWF INDF
	INCF gbl_posicion, F
	BTFSC STATUS,Z
	INCF gbl_posicion+D'1', F
label112
	INCF gbl_cont, F
	BTFSC STATUS,Z
	INCF gbl_cont+D'1', F
	GOTO	label127
label113
	MOVLW 0x0B
	XORWF interrupt_19_a, W
	BTFSC STATUS,Z
	MOVF interrupt_19_a+D'1', W
	BTFSS STATUS,Z
	GOTO	label117
	MOVLW 0xB0
	XORWF interrupt_19_b, W
	BTFSC STATUS,Z
	MOVF interrupt_19_b+D'1', W
	BTFSS STATUS,Z
	GOTO	label117
	MOVF gbl_cont, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF gbl_cont+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	MOVLW 0x33
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	MOVLW 0x0F
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	CLRF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BTFSS gbl_bandera_configuracion,1
	GOTO	label115
	BTFSS gbl_bandera_confirmacion_cambio,2
	GOTO	label114
	BCF	STATUS,IRP
	MOVLW LOW(gbl_claveConfirmar+D'0')
	MOVWF FSR
	MOVF gbl_posicion_confirmar_contra, W
	ADDWF FSR, F
	MOVLW 0x33
	MOVWF INDF
	INCF gbl_posicion_confirmar_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_confirmar_contra+D'1', F
	GOTO	label116
label114
	BCF	STATUS,IRP
	MOVLW LOW(gbl_nuevaContrasena+D'0')
	MOVWF FSR
	MOVF gbl_posicion_nueva_contra, W
	ADDWF FSR, F
	MOVLW 0x33
	MOVWF INDF
	INCF gbl_posicion_nueva_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_nueva_contra+D'1', F
	GOTO	label116
label115
	BCF	STATUS,IRP
	MOVLW LOW(gbl_contrasenaIngresada+D'0')
	MOVWF FSR
	MOVF gbl_posicion, W
	ADDWF FSR, F
	MOVLW 0x33
	MOVWF INDF
	INCF gbl_posicion, F
	BTFSC STATUS,Z
	INCF gbl_posicion+D'1', F
label116
	INCF gbl_cont, F
	BTFSC STATUS,Z
	INCF gbl_cont+D'1', F
	GOTO	label127
label117
	MOVLW 0x07
	XORWF interrupt_19_a, W
	BTFSC STATUS,Z
	MOVF interrupt_19_a+D'1', W
	BTFSS STATUS,Z
	GOTO	label120
	MOVLW 0xE0
	XORWF interrupt_19_b, W
	BTFSC STATUS,Z
	MOVF interrupt_19_b+D'1', W
	BTFSS STATUS,Z
	GOTO	label120
	MOVF gbl_cont, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF gbl_cont+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	MOVLW 0x41
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	MOVLW 0x0F
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	CLRF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	CALL limpiarLCD_00000
	BTFSS gbl_desbloqueado,0
	GOTO	label119
	BCF gbl_bandera_modificar,3
	CALL validarCon_00025
	BTFSS gbl_bandera_modificar,3
	GOTO	label118
	CALL mostrarMen_0001D
	CALL limpiarLCD_00000
	BSF gbl_bandera_configuracion,1
	GOTO	label127
label118
	CALL mensajeInc_00022
	GOTO	label127
label119
	MOVLW 0x0F
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	CLRF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	GOTO	label127
label120
	MOVLW 0x07
	XORWF interrupt_19_a, W
	BTFSC STATUS,Z
	MOVF interrupt_19_a+D'1', W
	BTFSS STATUS,Z
	GOTO	label124
	MOVLW 0xD0
	XORWF interrupt_19_b, W
	BTFSC STATUS,Z
	MOVF interrupt_19_b+D'1', W
	BTFSS STATUS,Z
	GOTO	label124
	MOVF gbl_cont, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF gbl_cont+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	MOVLW 0x30
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	MOVLW 0x0F
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	CLRF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BTFSS gbl_bandera_configuracion,1
	GOTO	label122
	BTFSS gbl_bandera_confirmacion_cambio,2
	GOTO	label121
	BCF	STATUS,IRP
	MOVLW LOW(gbl_claveConfirmar+D'0')
	MOVWF FSR
	MOVF gbl_posicion_confirmar_contra, W
	ADDWF FSR, F
	MOVLW 0x30
	MOVWF INDF
	INCF gbl_posicion_confirmar_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_confirmar_contra+D'1', F
	GOTO	label123
label121
	BCF	STATUS,IRP
	MOVLW LOW(gbl_nuevaContrasena+D'0')
	MOVWF FSR
	MOVF gbl_posicion_nueva_contra, W
	ADDWF FSR, F
	MOVLW 0x30
	MOVWF INDF
	INCF gbl_posicion_nueva_contra, F
	BTFSC STATUS,Z
	INCF gbl_posicion_nueva_contra+D'1', F
	GOTO	label123
label122
	BCF	STATUS,IRP
	MOVLW LOW(gbl_contrasenaIngresada+D'0')
	MOVWF FSR
	MOVF gbl_posicion, W
	ADDWF FSR, F
	MOVLW 0x30
	MOVWF INDF
	INCF gbl_posicion, F
	BTFSC STATUS,Z
	INCF gbl_posicion+D'1', F
label123
	INCF gbl_cont, F
	BTFSC STATUS,Z
	INCF gbl_cont+D'1', F
	GOTO	label127
label124
	MOVLW 0x07
	XORWF interrupt_19_a, W
	BTFSC STATUS,Z
	MOVF interrupt_19_a+D'1', W
	BTFSS STATUS,Z
	GOTO	label127
	MOVLW 0xB0
	XORWF interrupt_19_b, W
	BTFSC STATUS,Z
	MOVF interrupt_19_b+D'1', W
	BTFSS STATUS,Z
	GOTO	label127
	BTFSS gbl_bandera_configuracion,1
	GOTO	label125
	BTFSC gbl_bandera_confirmacion_cambio,2
	GOTO	label125
	MOVF gbl_cont, W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	BCF STATUS, RP0
	MOVF gbl_cont+D'1', W
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	MOVLW 0x42
	BSF STATUS, RP0
	MOVWF escribirDa_00016_arg_dato
	CLRF escribirDa_00016_arg_dato+D'1'
	CALL escribirDa_00016
	MOVLW 0x0F
	BSF STATUS, RP0
	MOVWF instruccio_00015_arg_comando
	CLRF instruccio_00015_arg_comando+D'1'
	CALL instruccio_00015
	BSF gbl_bandera_confirmacion_cambio,2
	CALL mostrarMen_0001E
	CALL limpiarLCD_00000
	GOTO	label127
label125
	BTFSS gbl_bandera_confirmacion_cambio,2
	GOTO	label126
	BTFSS gbl_bandera_configuracion,1
	GOTO	label126
	CALL cambiarCla_00026
	GOTO	label127
label126
	CALL validarCon_00025
label127
	BSF gbl_intcon,7
label128
	SWAPF Int1BContext+D'2', W
	MOVWF FSR
	SWAPF Int1BContext+D'1', W
	MOVWF PCLATH
	SWAPF Int1BContext, W
	MOVWF STATUS
	SWAPF Int1Context, F
	SWAPF Int1Context, W
	RETFIE
; } interrupt function end

	END
