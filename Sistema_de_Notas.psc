




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
	
Funcion prom <- promedioclass(ar)
	Definir prom,sumnot Como Real
	sumnot <- 0
	
	
	Para i <- 1 Hasta 5 Hacer
		sumnot <- sumnot + ar[i]
	FinPara
	
	prom <- sumnot / 5
	 
		
FinFuncion

Funcion aprob <- estudiantesaprobados(ar)
	Definir i, aprob Como Entero
	aprob <- 0
	Para i <- 1 Hasta 5 Hacer
		Si ar[i] > 60 Entonces
			aprob <- aprob + 1
		FinSi
	FinPara
	
FinFuncion

Funcion masalt <- notamasalta(ar)
	Definir masalt Como Real
	masalt <- 0
	Para i <- 1 Hasta 5 Hacer
		Si ar[i] > masalt Entonces
			masalt <- ar[i]
		FinSi
	FinPara
res <- alto
FinFuncion

Subproceso mostrarpromedio(prom)
	Escribir "El promedio de notas es: ", prom
FinSubProceso

Subproceso mostraraprobados(ap)
	Escribir "Alumnos que aprobaron el curso: ", ap
FinSubProceso

Subproceso mostrarnotamasalta(alt)
	Escribir "La nota más alta fue: ", alt
FinSubProceso
	




Algoritmo Sistema_de_Notas
	Definir op,aprobados Como Entero
	Definir nota, promedio, altanota Como Real
	Definir Ingresonotas Como Logico
	Dimension nota[5]
	
	Ingresonotas = falso
	
Repetir
	Menu
	Escribir " Ingrese una de las opciones (1 a 5)"
	Leer op
	

	Segun op Hacer
		1:
			Escribir "Ha elegido ingresar notas"
			Ingresonotas = Verdadero
			
				declararnotas(nota)
				
			
			
		2:
			Si Ingresonotas
				Escribir "Ha elegido mostrar notas y categorías"
				mostrarnotas(nota)
			SiNo
				Escribir "Por favor ingrese las notas desde la opcion 1 antes de verlas en la opcion 2"
			FinSi
				
				
			
			
		3:
			Si Ingresonotas
				Escribir "Ha elegido Estadística global"
				promedio <- promedioclass(nota)
				mostrarpromedio(promedio)
				aprobados <- estudiantesaprobados(nota)
				mostraraprobados(aprobados)
				altanota <- notamasalta(nota)
				mostrarnotamasalta(altanota)
			SiNo
				Escribir "Por favor ingrese las notas desde la opción 1 antes de ver las estadísticas en la opción 3"
			FinSi
			
			
			
		4:
			Escribir "Ha elegido ingresar puntos extra"
			
			
		5:
			Escribir "Cerrando el programa......"
			
		De Otro Modo:
			
			Escribir "Por favor ingrese un número del 1 al 5 para escoger una opción"
			
			
	FinSegun
	
Hasta Que op = 5
FinAlgoritmo
