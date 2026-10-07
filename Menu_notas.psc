Algoritmo Menu_notas
	Definir entrada, NOTA_MIN Como Entero
Repetir
	Escribir "Ingrese una opción"
	
	Escribir "1. Ingrese nota "
	Escribir "2. Mostrar categoría de nota"
	Escribir "3. Salir"
	Leer entrada
	

	
	Segun entrada Hacer
		1:
			Repetir
			Escribir "Ingrese una nota entre 0 y 100"
			Leer nota
			Si nota > 100 o nota < 0 Entonces
				Escribir "La nota ingresada no es válida"
			FinSi
		    Hasta Que nota  >= 0 y nota <= 100
		
			
		2:
			Si nota >= 61 Entonces
				Escribir "Aprobado"
			SiNo
				Escribir "Reprobado"
			FinSi
			
			
		3: 
			Escribir "Saliendo del menú..."
			
		De Otro Modo:
			Escribir "La opcion no es valida"
			Escribir "Ingrese una opcion del 1 al 3"
			
	FinSegun
Hasta Que entrada = 3
FinAlgoritmo
