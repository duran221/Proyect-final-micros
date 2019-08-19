//Realizar un ejercicio en el cual se permita a el usuario ingresar datos a travez de un teclado, al pulsar un boton 
//conectado a el puerto b, mostrar un mensaje por tres segundos impidiendo a el usuario ingresar datos por teclado,
//transcurridos tres segundos borrar el mensaje y permitir a el usuario seguir ingresando datos.

#include <system.h>
#include <stdlib.h>
#include <stdio.h>

//El contador inicialmente en 128 para que empiece a escribir los números en la primer posición.
short cont=128;
//la contrasena inicialmente almacenada entre 4 y ocho digitos:
char contrasena[8]= {'1','2','3','4'};
//la contraseña que ingresa el usuario por teclado:
char contrasenaIngresada[8];
//la contrasena digita el usuario para cambiar de clave:
char nuevaContrasena[8];
//un contador para ir agregando los numeros que ingresa el usuario:
short posicion_nueva_contra=0;
//la contrasena que digita el usuario para confirmar el cambio:
char claveConfirmar[8];
//el contador donde se va ingresando la contrasena nueva
short posicion_confirmar_contra=0;
//un contador para verificar los intentos ingresados por el usuario:
short contadorIntento=1;
//Importante, este booleano me permite conocer si la caja está desbloqueada:
bool desbloqueado=false;
//La bandera me permite verificar si actualmente el programa se encuentra en modo de configuracion de clave:
bool bandera_configuracion=false;
//La bandera me permite conocer si el usuario esta confirmando la clave a cambiar:
bool bandera_confirmacion_cambio=false;
//Una bandera que se activa en true si la contrasena ingresada es correcta para entrar al menu de cambio de contrasena:
bool bandera_modificar=false;
//un contador que va verificando la posicion en la cual se almacena la contraseña ingresada por el usuario:
short posicion=0;

//---------------------------------------------------Configuraciones Puerto Serial----------------------------------------------

void habilitarTransmisionSerial(){

	//Bit de habilitaci?n de puerto serie
    //1: Serial port activado (configures RC7/RX/DT and RC6/TX/CK pins as serial port pins)
    rcsta.SPEN=1;
    
    //Definiendo el modo de sincronizaci?n de la transmisi?n como ASINCRONA:
    txsta.SYNC=0;
    
    //Bit de habilitaci?n de transmisi?n de 9 bits
    //0 = Selects 8-bit transmission
    txsta.TX9=0;
    
    //Bit de selecci?n de alta velocidad en baudios... Por defecto en 1 para alta velocidad:
    txsta.BRGH=1;
    
    //velocidad de transmisi?n Baud
    spbrg=25;
    
    //Bit de habilitaci?n de interrupci?n de transmisi?n USART
	//1 = Enables the USART transmit interrupt
    pie1.TXIE=1;
    
    //Bit de habilitaci?n de transmisi?n
    //1 = Transmit enabled
    txsta.TXEN=1;
    
}


void desactivarTransmisionSerial(){
	//Bit de habilitaci?n de puerto serie
    //1: Serial port activado (configures RC7/RX/DT and RC6/TX/CK pins as serial port pins)
    rcsta.SPEN=0;
    
    //Bit de habilitaci?n de interrupci?n de transmisi?n USART
	//1 = Enables the USART transmit interrupt
    pie1.TXIE=0;
    
    //Bit de habilitaci?n de transmisi?n
    //1 = Transmit enabled
    txsta.TXEN=0;
    portc=0;

}

//------------------------------------------------------- Escritura de datos en pantalla:---------------------------------------------


/**
*Escribe en el LCD la posición en la cual deceo almacenar el dato en pantalla.
*/
void instruccion(int comando) {
	//Escribimos en el puerto la posición en la cual va a ser escrito el número:
    portc = comando;

	//Activamos el enable de el LCD
    porta.4=1;
    //Como lo que vamos a escribir es un comando, debemos mandar un cero a el Rs:
    porta.5=0;
    //se realiza una espera de 15ms:
    delay_ms(15);

	//se reinician los pines luego de introducir los comandos:
    porta.4=0;
    porta.5=0;
}


/**
*Limpia la pantalla para volver a ingresar un mensaje:
*/
void limpiarLCD(){

	cont=128;
	posicion=0;
	//Con el 1 se limpia el display:
	instruccion(1);
	delay_ms(15);
}


/**
*Escribe el dato ingresado por teclado en el LCD.
*/
void escribirDato(int dato) {

	//Primero escribimos el número o dato en el puerto C:
    portc = dato;

	//se envia el pulso para activar el enable.
    porta.4=1;
    //activamos el Rs en uno ya que vamos a enviar el escribir el dato en el LCD
    porta.5=1;
    //Realizamos una espera prudencial de 15 ms:
    delay_ms(15);
    
    
    porta.4=0;
    porta.5=1;
    
    //Reiniciamos los valores completada la operación de escritura.
    porta.4=0;
    porta.5=0;
}

//-------------------------------------------------------Transmisión por el puerto Serial------------------------------------

//Este metodo recibe el dato que se va a transmitir
void transmitir (int date){
	//pir1.TXIF : Bit de bandera de interrupci?n de transmisi?n
	//1:El b?fer de transmisi?n USART est? vac?o.
	//0: El b?fer de transmisi?n USART est? lleno
    while(!pir1.TXIF);
    //transmita el dato que ingresa por p?rametro:
    txreg=date;
    return;
}

void mostrarMensajeBloqueoTerminal(){

	//Se habilita la transmisión serial:
	habilitarTransmisionSerial();
	char mensajeBloqueo[]= "LA CAJA ESTA BLOQUEADAA";
	int i;
	for(i=0; i<sizeof(mensajeBloqueo); i++){
		transmitir(mensajeBloqueo[i]);
		cont++;
		
	}
	
}

void mostrarMensajeDesbloqueoTerminal(){

	//Se habilita la transmisión serial:
	habilitarTransmisionSerial();
	char mensaje[]= "--CAJA DESBLOQUEADA--";
	int i;
	for(i=0; i<sizeof(mensaje); i++){
		transmitir(mensaje[i]);
		cont++;
		
	}
	
}


//----------------------------------------------------- Mensajes Programados Para mostrar por pantalla---------------------------------

/**
*Muestra un mensaje cuando la caja se encuentra cerrada
*/
void mensajeCajaCerrada(){
//El mensaje a mostrar por pantalla:
	char mensaje[]= "++CAJA CERRADA++";
	
	int i;
	for(i=0; i<sizeof(mensaje); i++){
		//se manda la posicion en la cual se escribe el dato:
		instruccion(cont);
		//se escribe el dato en pantalla:
		escribirDato(mensaje[i]);
		cont++;
		
	}
	//escribe los datos encolados en el lcd
	instruccion(15);
	cont=128;
}


/**
*Escribe un mensaje en pantalla
*
*/
void mensajeIngresoContrasena(){
	
	//El mensaje a mostrar por pantalla:
	char mensaje[]= "INSERTE CLAVE";
	
	int i;
	for(i=0; i<sizeof(mensaje); i++){
		//se manda la posicion en la cual se escribe el dato:
		instruccion(cont);
		//se escribe el dato en pantalla:
		escribirDato(mensaje[i]);
		cont++;
		
	}
	//escribe los datos encolados en el lcd
	instruccion(15);
	cont=128;
}



/**
*Bloquea la caja fuerte impidiendo su uso, ademas, muestra un mensaje indicando el bloqueo
*/
void mostrarMensajeBloqueo(){
	
	//se limpia el display:
	limpiarLCD();
	
	char mensaje[]= "INSERTE LLAVE";
	int i;
	for(i=0; i<sizeof(mensaje); i++){
		//se manda la posicion en la cual se escribe el dato:
		instruccion(cont);
		//se escribe el dato en pantalla:
		escribirDato(mensaje[i]);
		cont++;
		
	}
	delay_s(1);
	
}

/**
*Muestra un mensaje indicando ingresar la nueva clave:
*/
void mostrarMensajeIngresoContrasena(){
	
	//se limpia el display:
	limpiarLCD();
	
	char mensaje[]= "NUEVA CLAVE";
	int i;
	for(i=0; i<sizeof(mensaje); i++){
		//se manda la posicion en la cual se escribe el dato:
		instruccion(cont);
		//se escribe el dato en pantalla:
		escribirDato(mensaje[i]);
		cont++;
		
	}
	delay_s(1);
	
}

/**
*Muestra un mensaje indicando confirmar la nueva clave:
*/
void mostrarMensajeConfirmar(){
	
	//se limpia el display:
	limpiarLCD();
	
	char mensaje[]= "CONFIRME CLAVE";
	int i;
	for(i=0; i<sizeof(mensaje); i++){
		//se manda la posicion en la cual se escribe el dato:
		instruccion(cont);
		//se escribe el dato en pantalla:
		escribirDato(mensaje[i]);
		cont++;
		
	}
	delay_s(1);
}


/**
*Muestra por pantalla el mensaje indicando que la contrase?a es correcta
*/
void mensajeCorrecto(){
	
	char mensaje[]="BUEN DIA USUARIO";
	int posicio=128;
	int i;
	for(i=0; i<sizeof(mensaje); i++){
		instruccion(posicio);
		escribirDato(mensaje[i]);
		posicio++;
	}
	
	cont=128;
	posicion=0;
	
	//Se reinicia el contador de intentos para no generar problemas de ingreso
	contadorIntento=0;

}
void mensajeCambioContrasena(){
	limpiarLCD();
	
	char mensaje[]="CAMBIO OK";
	int posicio=128;
	int i;
	for(i=0; i<sizeof(mensaje); i++){
		instruccion(posicio);
		escribirDato(mensaje[i]);
		posicio++;
	}
	
	
	//Se reinicia el contador de intentos para no generar problemas de ingreso
	contadorIntento=0;
}

/**
*Muestra un mensaje cuando hay un error en el cambio de contrasena
*/
void mensajeErrorCambio(){
	limpiarLCD();
	
	char mensaje[]="ERROR EN CAMBIO";
	short posicio=128;
	short i;
	for(i=0; i<sizeof(mensaje); i++){
		instruccion(posicio);
		escribirDato(mensaje[i]);
		posicio++;
	}
	
	
	//Se reinicia el contador de intentos para no generar problemas de ingreso
	contadorIntento=0;
}



/**
*Muestra por pantalla un mensaje indicando que la contrase?a es incorrecta
*/
void mensajeIncorrecto(){

	char mensaje[]="INCORRECTO";

	short posicio=128;

	short i;
	for(i=0; i<sizeof(mensaje); i++){
		instruccion(posicio);
		escribirDato(mensaje[i]);
		posicio++;
	}
	
	//Si se exceden los intentos permitidos para ingreso de contrasena:
	if(contadorIntento==3){
		//genera la interrupción externa mostrando un mensaje y dejando la caja bloqueada:
		mostrarMensajeBloqueoTerminal();
		desactivarTransmisionSerial();
		intcon.INTF=1;
		
	}else{
		//Incrementar el contador de intentos:
		contadorIntento=contadorIntento+1;
	}
	
	cont=128;
	posicion=0;

}
//-------------------------------------------------------Validaciones----------------------------------------------------------

/**
*Vuelve a ceros la contrasena de el sistema para aplicar el cambio de contrasena:
*/
void reiniciarClave(){
	int i;
	for(i=0; i<sizeof(contrasena); i++){
		contrasena[i]=0;
	}
}

void reiniciarClaveIngresada(){
	int i;
	for(i=0; i<sizeof(contrasenaIngresada); i++){
		contrasenaIngresada[i]=0;
	}
}


/**
*Valida si la contraseña ingresada por el usuario es correcta
*/
void validarContrasena(){

	bool condicion=true;
	int i;
	for(i=0; i<sizeof(contrasena); i++){
		if(contrasenaIngresada[i]!=contrasena[i]){
			condicion=false;
			break;
		}
	}
	
	limpiarLCD();
	//si la contrasena es correcta:
	if(condicion==true){
		//envie un mensaje de bienvenida
		mensajeCorrecto();
		instruccion(15);
		//active la bandera de desbloqueo:
		desbloqueado=true;
		//se activa la bandera que permite realizar modificacion de contrasena (solo valido cuando se pulsa la letra A):
		bandera_modificar=true;
					
	}else{
		mensajeIncorrecto();
		instruccion(15);
	}
	//se limpia el vector ingresado anteriormente por motivos de seguridad:
	reiniciarClaveIngresada();
	posicion=0;
	delay_s(2);
	instruccion(1);
}


/**
*Modulo que realiza las validaciones, y en caso de estar todo ok, aplica el cambio de contrasena
*/
void cambiarClave(){
	//primero se valida que las claves, tengan igual longitud:
	if(posicion_nueva_contra == posicion_confirmar_contra){
		
		//luego, se valida que la clave tenga una longitud entre 4 y 8:
		if(posicion_nueva_contra>=4 && posicion_nueva_contra<=8){
			bool condicion=true;
			int i;
			for(i=0; i<sizeof(nuevaContrasena); i++){
				if(nuevaContrasena[i]!=claveConfirmar[i]){
					condicion=false;
					break;
				}
			}
			
			//si ambas contrasenas coinciden, ejecute el cambio de contrasena:
			if(condicion==true){
				reiniciarClave();
				for(i=0; i<sizeof(nuevaContrasena); i++){
					contrasena[i]=nuevaContrasena[i];
					
				}
				
				mensajeCambioContrasena();
						
			}else{
				//si ingresa aqui es porque las dos contrasenas no coincidieron:
				mensajeErrorCambio();
			}
			
		}else{
		
			//si ingresa aqui es porque las dos contrasenas no coincidieron:
			mensajeErrorCambio();
		
		}
		
	}else{
	
		mensajeErrorCambio();
	}
	//se reinician los valores para evitar errores:
	bandera_configuracion=false;
	bandera_confirmacion_cambio=false;
	posicion_confirmar_contra=0;
	posicion_nueva_contra=0;
	delay_s(1);

}

//--------------------------------------------------------------Zona De Interrupciones--------------------------------------------------

/**
*Cuando se preciona una tecla se genera la interrupción 
*Mostrando el número ingresado por pantalla.
*/
void interrupt(void){

	//se valida que la caja no se encuentre apagada
	if(portb.1==0){
		if(cont==128){
			limpiarLCD();
		}
		//Eliminar la restriccion por intentos excedidos: Esto ocurre cuando se inserta la llave de seguridad:
		if(intcon.INTF==1 && portb.0==1){
			mostrarMensajeDesbloqueoTerminal();
			desactivarTransmisionSerial();
			//se Limpia la pantalla:
			limpiarLCD();
			//se reinicia el contador de contraseña:
			contadorIntento=1;
			intcon.GIE=1;
			//se desactiva la bandera de interrupci?n externa para permitir la escritura por teclado:
			intcon.INTF=0;
			
					
		//Si se activa la interrupción externa generada por software, genere un mensaje de error impidiendo al usuario manipular la caja:
		}else if(intcon.INTF==1 && portb.0==0){
		
			mostrarMensajeBloqueo();
			
		}else{
		
			//primero, se lee el puerto B:
			int a = porta;
			int b=portb;
			
			//Luego se reinicia la bandera
			intcon.RBIF=0;
			
			if(a==14 && b==224){
					instruccion(cont);
					//se envía el dato para ser escrito:
					escribirDato('7');
					instruccion(15);
					
					//si actualmente se encuentra en el modo de configuracion:
					if(bandera_configuracion==true){
						if(bandera_confirmacion_cambio==true){
							claveConfirmar[posicion_confirmar_contra]='7';
							posicion_confirmar_contra++;

						}else{	
							//se esta ingresando en el modo configuracion:
							nuevaContrasena[posicion_nueva_contra]='7';			
							posicion_nueva_contra++;
						}
					}else{
						//de lo contrario es porque la caja se encuentra bloqueada:
						//se agrega el dato en el vector:
						contrasenaIngresada[posicion]='7';			
						posicion++;
						
					}
					cont++;
					
			}else if(a==14 && b==208){
					instruccion(cont);
					//se envía el dato para ser escrito:
					escribirDato('8');
					instruccion(15);
		
					//si actualmente se encuentra en el modo de configuracion:
					if(bandera_configuracion==true){
						if(bandera_confirmacion_cambio==true){
							claveConfirmar[posicion_confirmar_contra]='8';
							posicion_confirmar_contra++;

						}else{	
							//se esta ingresando en el modo configuracion:
							nuevaContrasena[posicion_nueva_contra]='8';			
							posicion_nueva_contra++;
						}
					}else{
						//de lo contrario es porque la caja se encuentra bloqueada:
						//se agrega el dato en el vector:
						contrasenaIngresada[posicion]='8';			
						posicion++;
						
					}
					cont++;
	
			}else if(a==14 && b==176){
					instruccion(cont);
					//se envía el dato para ser escrito:
					escribirDato('9');
					instruccion(15);
					//si actualmente se encuentra en el modo de configuracion:
					if(bandera_configuracion==true){
						if(bandera_confirmacion_cambio==true){
							claveConfirmar[posicion_confirmar_contra]='9';
							posicion_confirmar_contra++;

						}else{	
							//se esta ingresando en el modo configuracion:
							nuevaContrasena[posicion_nueva_contra]='9';			
							posicion_nueva_contra++;
						}
					}else{
						//de lo contrario es porque la caja se encuentra bloqueada:
						//se agrega el dato en el vector:
						contrasenaIngresada[posicion]='9';
						posicion++;
						
					}
					cont++;
					
					
			}else if(a==13 && b==224){
					instruccion(cont);
					//se envía el dato para ser escrito:
					escribirDato('4');
					instruccion(15);
					//si actualmente se encuentra en el modo de configuracion:
					if(bandera_configuracion==true){
						if(bandera_confirmacion_cambio==true){
							claveConfirmar[posicion_confirmar_contra]='4';
							posicion_confirmar_contra++;

						}else{	
							//se esta ingresando en el modo configuracion:
							nuevaContrasena[posicion_nueva_contra]='4';			
							posicion_nueva_contra++;
						}
					}else{
						//de lo contrario es porque la caja se encuentra bloqueada:
						//se agrega el dato en el vector:
						contrasenaIngresada[posicion]='4';
						posicion++;
						
					}
					cont++;
					
			}else if(a==13 && b==208){
					instruccion(cont);
					//se envía el dato para ser escrito:
					escribirDato('5');
					instruccion(15);
					//si actualmente se encuentra en el modo de configuracion:
					if(bandera_configuracion==true){
						if(bandera_confirmacion_cambio==true){
							claveConfirmar[posicion_confirmar_contra]='5';
							posicion_confirmar_contra++;

						}else{	
							//se esta ingresando en el modo configuracion:
							nuevaContrasena[posicion_nueva_contra]='5';			
							posicion_nueva_contra++;
						}
					}else{
						//de lo contrario es porque la caja se encuentra bloqueada:
						//se agrega el dato en el vector:
						contrasenaIngresada[posicion]='5';
						posicion++;
						
					}
					cont++;
					
					
			}else if(a==13 && b==176){
					instruccion(cont);
					//se envía el dato para ser escrito:
					escribirDato('6');
					instruccion(15);
					//si actualmente se encuentra en el modo de configuracion:
					if(bandera_configuracion==true){
						if(bandera_confirmacion_cambio==true){
							claveConfirmar[posicion_confirmar_contra]='6';
							posicion_confirmar_contra++;

						}else{	
							//se esta ingresando en el modo configuracion:
							nuevaContrasena[posicion_nueva_contra]='6';			
							posicion_nueva_contra++;
						}
					}else{
						//de lo contrario es porque la caja se encuentra bloqueada:
						//se agrega el dato en el vector:
						contrasenaIngresada[posicion]='6';
						posicion++;
						
					}
					cont++;
							
			}else if(a==11 && b==224){
					instruccion(cont);
					//se envía el dato para ser escrito:
					escribirDato('1');
					instruccion(15);
					//si actualmente se encuentra en el modo de configuracion:
					if(bandera_configuracion==true){
						if(bandera_confirmacion_cambio==true){
							claveConfirmar[posicion_confirmar_contra]='1';
							posicion_confirmar_contra++;

						}else{	
							//se esta ingresando en el modo configuracion:
							nuevaContrasena[posicion_nueva_contra]='1';
							posicion_nueva_contra++;
						}
					}else{
						//de lo contrario es porque la caja se encuentra bloqueada:
						//se agrega el dato en el vector:
						contrasenaIngresada[posicion]='1';
						posicion++;
						
					}
					cont++;
					
			}else if(a==11 && b==208){
					instruccion(cont);
					//se envía el dato para ser escrito:
					escribirDato('2');
					instruccion(15);
					//si actualmente se encuentra en el modo de configuracion:
					if(bandera_configuracion==true){
						if(bandera_confirmacion_cambio==true){
							claveConfirmar[posicion_confirmar_contra]='2';
							posicion_confirmar_contra++;

						}else{	
							//se esta ingresando en el modo configuracion:
							nuevaContrasena[posicion_nueva_contra]='2';		
							posicion_nueva_contra++;
						}
					}else{
						//de lo contrario es porque la caja se encuentra bloqueada:
						//se agrega el dato en el vector:
						contrasenaIngresada[posicion]='2';
						posicion++;
						
					}
					cont++;
					
			}else if(a==11 && b==176){
					instruccion(cont);
					//se envía el dato para ser escrito:
					escribirDato('3');
					instruccion(15);
					//si actualmente se encuentra en el modo de configuracion:
					if(bandera_configuracion==true){
						if(bandera_confirmacion_cambio==true){
							claveConfirmar[posicion_confirmar_contra]='3';
							posicion_confirmar_contra++;

						}else{	
							//se esta ingresando en el modo configuracion:
							nuevaContrasena[posicion_nueva_contra]='3';		
							posicion_nueva_contra++;
						}
					}else{
						//de lo contrario es porque la caja se encuentra bloqueada:
						//se agrega el dato en el vector:
						contrasenaIngresada[posicion]='3';
						posicion++;
						
					}
					cont++;
							
			}else if(a==7 && b==224){
					instruccion(cont);
					//se envía el dato para ser escrito:
					escribirDato('A');
					instruccion(15);
					limpiarLCD();
					//si la caja se encuentra desbloqueada y se pulsa este boton, entre al modo de configuracion:
					if(desbloqueado==true){
						//si la contrasena ingresada es correcta, esta variable pasara a ser true en el metodo validarContrasena:
						bandera_modificar=false;
						
						//se valida si la contrasena es correcta:
						validarContrasena();
						if(bandera_modificar==true){
							//se muestra el mensaje indicando el ingreso de nueva contrasena:
							mostrarMensajeIngresoContrasena();
							limpiarLCD();
							bandera_configuracion=true;
						//de lo contrario muestre un mensaje de error:					
						}else{
							mensajeIncorrecto();
							
						}
						
						//cont=128;
					
					//de lo contrario muestre un mensaje indicando a el usuario que la opcion no esta disponible:
					}else{
						instruccion(15);
					}
					
					
			}else if(a==7 && b==208){
					instruccion(cont);
					//se envía el dato para ser escrito:
					escribirDato('0');
					instruccion(15);
					//si actualmente se encuentra en el modo de configuracion:
					if(bandera_configuracion==true){
						if(bandera_confirmacion_cambio==true){
							claveConfirmar[posicion_confirmar_contra]='0';
							posicion_confirmar_contra++;

						}else{	
							//se esta ingresando en el modo configuracion:
							nuevaContrasena[posicion_nueva_contra]='0';		
							posicion_nueva_contra++;
						}
					}else{
						//de lo contrario es porque la caja se encuentra bloqueada:
						//se agrega el dato en el vector:
						contrasenaIngresada[posicion]='0';
						posicion++;
						
					}
					cont++;
					
			}else if(a==7 && b==176){
					
					//si solo esta activa la bandera de configuracion pida verificar la clave:
					if(bandera_configuracion==true && bandera_confirmacion_cambio==false){
						instruccion(cont);
						//se envía el dato para ser escrito:
						escribirDato('B');
						instruccion(15);
						bandera_confirmacion_cambio=true;
						mostrarMensajeConfirmar();
						limpiarLCD();
						
					//si ambas vanderas estan activas, realice las validaciones y confirme el cambio de contrasena:	
					}else if(bandera_confirmacion_cambio==true && bandera_configuracion==true){
						cambiarClave();
						//de lo contrario, simplemente valide la contrasena
					}else{
					
						validarContrasena();		
					}
					
			}
			
			//Se levanta la bandera de interrupcion:
			intcon.GIE=1;
		}
		
	}
}


//----------------------------------------Inicializacion de variables, Hilo principal---------------------------------------------------
/**
*Se realizan las configuraciones iniciales para escuchar por teclado
*cada que el usuario ingresa un número.
*/
void main(void) {

    //-------------------------------------------Configuraciones de puertos:--------------------------------------------------
    //configurando puerto C como salida de datos:
    trisc = 0;
    //configurando puerto A como entrada de datos el nible alto y el pin 0, y como salida de datos el nible bajo exceto el pin 0:
    trisb=241;
    //configurando el puerto a únicamente como digital
    adcon1 = 6;
    //configurando el puerto a como salida, por este puerto se enviarán los comandos a el lcd.
    trisa = 0;
    //
    option_reg.7 = 0;
    
    //--------------------------Configuracion Interrupciones---------------------------------------------
     // INTERRUPCIONES DE RB4 A 4B7 ON
    intcon.RBIE=1;
    intcon.GIE=1;    
    
    //se enciende la interrupción externa:
    intcon.INTE=1;

	//se inicializa el puerto b en cero:
	portb=0;
	
	
	//se pone a rotar el cero por los primeros 4 bits del puerto a:
    while (1){
    
        porta=14;
        delay_ms(57);
        porta=13;
        delay_ms(57);
        porta=11;
        delay_ms(57);
        porta=7;
        //si la caja se encuentra apagada:
        if(portb.1==1){
			desbloqueado=false;
			bandera_configuracion=false;
			bandera_confirmacion_cambio=false;
			
			mensajeCajaCerrada();
				
        }else{
			//El mensaje que se debe mostrar cuando la caja esta en modo de espera y bloqueada:
			if(cont==128 && desbloqueado==false && bandera_configuracion==false){
			
				mensajeIngresoContrasena();
				
			//si la caja se encuentra desbloqueada y en estado de espera:
			}else if(cont==128 && desbloqueado==true && bandera_configuracion==false){
				mensajeCorrecto();	
			}
		}
    };

}