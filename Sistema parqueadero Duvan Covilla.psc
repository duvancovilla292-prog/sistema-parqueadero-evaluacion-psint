Funcion disponivilidad <- ConsulDispo ( espacios )
	Si espacios == 0 Entonces
		disponivilidad <- "false"
	SiNo
		disponivilidad <- "true"
		
	Fin Si
Fin Funcion

Funcion verificacion <- RegisEntra ( espacios )
	Si espacios == 0 Entonces
		verificacion <- "false"
	SiNo
		verificacion <- "true"
		
	Fin Si
Fin Funcion

Funcion salida <- Regissali ( espacios )
	Si espacios == 20 Entonces
		salida <- "false"
	SiNo
		salida <- "true"
	FinSi
	
Fin Funcion

Algoritmo parqueadero
	definir espacios,opci,vehiculos Como Entero
	Definir verificacion, verificacion1,salida , salida1,disponibilidad1, disponivilidad Como caracter
	espacios <- 20
	
	Repetir
		vehiculos <- 0
		Escribir "que solicita en el parqueadero"
		Escribir "1 Registrar ingreso"
		Escribir "2 Resgistrar salida"
		Escribir "3 Consultar disponibilidad"
		Escribir "0 Salir del menu"
		Leer opci
		Segun opci Hacer
			1:
				
				verificacion1 <- RegisEntra ( espacios )
				Si verificacion1 == "false"  Entonces
					Escribir "no hay espacios disponibles"
				SiNo
					Escribir "cuantos vehiculos desea ingresar"
					leer vehiculos
					Si vehiculos <= espacios Entonces
						espacios <- espacios - vehiculos
						Escribir "se ingreso su vehiculo, quedan ",espacios," espacios disponibles"
					SiNo
						Escribir "no tenemos tantos espacios"
					Fin Si
					
				Fin Si
				esperar 2 segundos
			2:
				salida1 <- Regissali ( espacios )
				Si salida1 == "false"  Entonces
					Escribir "no hay vehiculos"
				SiNo
					Escribir "cuantos vehiculos desea sacar"
					leer vehiculos
					Si vehiculos <= espacios Entonces
						espacios <- espacios + vehiculos
						Escribir "se sacaron sus vehiculo quedan ", espacios," espacios disponibles"
					SiNo
						Escribir "no hay tantos vehiculos"
					Fin Si
					
				Fin Si
				esperar 2 segundos
			3:
				disponibilidad1 <- Consuldispo (espacios)
				Si disponibilidad1 == "false" Entonces
					Escribir "no quedad espacios en este momento"
				SiNo
					Escribir "si quedan espacios disponibles, un total de ",espacios
				Fin Si
				
			De Otro Modo:
				Escribir "no es una opcion"
				esperar 1 Segundos
		Fin Segun
		
	Hasta Que opci == 0
	escribir "gracias por usar nuestro menu"
FinAlgoritmo
