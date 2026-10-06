Algoritmo Menu_notas
	Definir entrada, NOTA_MIN Como Entero
	
	Escribir "Ingrese una opción"
	
	Escribir "1. Ingrese nota "
	Escribir "2. Mostrar categoría de nota"
	Escribir "3. Salir"
	Leer entrada
	
	Segun entrada Hacer
		1:
			Escribir "Ingrese una nota entre 0 y 100"
			Leer nota
			Si nota > 100 o nota < 0 Entonces
				Escribir "La nota ingresada no es válida"
				
			SiNo
				 Escribir "La nota ingresada es: ", nota
			
			FinSi
			
		2:
			Escribir "La categoría es: "
			
		3: 
			Escribir "Saliendo del menú..."
	FinSegun
	
FinAlgoritmo
