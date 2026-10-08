




SubProceso Menu
	Escribir "======= SISTEMA DE NOTAS FE729====="
	Escribir "1. Ingresar Notas"
	Escribir "2. Mostar notas y categorías"
	Escribir "3. Estadística"
	Escribir "4. Puntos Extra"
	Escribir "5. Salir"
FinSubProceso

SubProceso  declararnotas(ar)
	
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Repetir
		Escribir "Ingrese una nota de 0 a 100"
		Leer ar[i]
		Si ar[i] < 0 o ar[i] > 100 Entonces
			Escribir "Por favor ingrese una nota valida de 0 a 100"
		FinSi
	    Hasta Que  ar[i] >= 0 y ar[i] <= 100
		
	    
	FinPara
FinSubProceso 


SubProceso mostrarnotas(ar)
	
	Para i<- 1 Hasta 5 Con Paso 1 Hacer
		Escribir "nota ", i " : ", ar[i]
		Si ar[i] >= 90 y ar[i] <= 100 Entonces
			Escribir "Sobresaliente"
		SiNo
			Si ar[i] >= 76 y ar[i] <= 89 Entonces
				Escribir "Notable"
			Sino 
				Si ar[i] >= 61 y ar[i] <= 75 Entonces
					Escribir "Satisfactorio"
				SiNo
					Escribir "Insuficiente"
				FinSi
			FinSi
		FinSi
	FinPara
	
FinSubProceso



Algoritmo Sistema_de_Notas
	Definir op Como Entero
	Definir nota Como Real
	Dimension nota[5]
	
Repetir
	Menu
	Escribir " Ingrese una de las opciones (1 a 5)"
	Leer op
	

	Segun op Hacer
		1:
			Escribir "Ha elegido ingresar notas"
			
				declararnotas(nota)
				
			
			
		2:
			Escribir "Ha elegido mostrar notas y categorías"
			    mostrarnotas(nota)
			
		3:
			Escribir "Ha elegido Estadística global"
			
		4:
			Escribir "Ha elegido ingresar puntos extra"
			
			
		5:
			Escribir "Cerrando el programa......"
			
		De Otro Modo:
			
			Escribir "Por favor ingrese un número del 1 al 5 para escoger una opción"
			
			
	FinSegun
	
Hasta Que op = 5
FinAlgoritmo
