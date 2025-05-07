//proceso Atm 
// desarrollado por emmanuel.d.breyaue (@nerdemma) linktr.ee/nerdemma
// disponible para trabajar en sistemas, contactar si conoce alguna oferta de empleo. 
// universidad nacional de san martin CPU EyCT IRP 2025


Proceso ATM
	Definir saldo como Real;
	Definir opc como Real;
	
	Definir pin como entero;
	Definir pin_ingresado como Entero;
	Definir intentos como Entero;
	
	Definir deposito como Entero;
	definir extraer como Entero;
	
	//variables predefinidas
	intentos <- 0; 
	pin <- 1234; 
	saldo <- 100; 
	
	Mientras intentos < 3 Hacer
		Escribir "Ingrese clave de seguridad: ";
		Leer pin_ingresado;
		si pin_ingresado <> pin Entonces
			intentos <- intentos + 1;
			Escribir "Clave incorrecta, Intento", intentos, "de 3";
			

			Sino
				Escribir "Bienvenido.";
				
				Escribir "Menu Principal";
				Escribir "1) consultar saldo";
				Escribir "2) depositar";
				Escribir "3) extraer";
				Escribir "0) salir";
				
				Leer opc;
				
				
				Mientras opc <> 0 Hacer
									
					Segun opc Hacer
						1: Escribir "Saldo Disponible: $ARS",saldo;	
							
						2: 
							Escribir "Ingrese el monto a depositar: $ARS ";
							Leer deposito;
							saldo <- saldo + deposito;
							Escribir "Saldo Disponible: $ARS",saldo;
						3:
							Escribir "Ingrese el monto a extraer: $ARS ";
							Leer extraer;
							
							Si saldo < extraer Entonces
								Escribir "Fondos insuficientes";
							Sino
								saldo <- saldo - extraer;
							FinSi
							
								
					FinSegun
					
					
					
				Escribir "Menu Principal";
				Escribir "1) consultar saldo";
				Escribir "2) depositar";
				Escribir "3) extraer";
				Escribir "0) salir";	
				Leer opc;
				FinMientras
				
				
			
		FinSi
		
		si intentos == 3 y pin_ingresado <> pin Entonces
			Escribir "Usuario bloqueado, contacte a soporte.";
			
		FinSi
		
	FinMientras
		
	
FinProceso
