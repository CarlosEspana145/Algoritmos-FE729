Algoritmo Ciclo_Para
	Definir notas, i, rep Como Entero
	
	Dimension notas[5]
	
	notas[1] <- 90
	notas[2] <- 100
	notas[3] <- 85
	notas[4] <- 70
	notas[5] <- 100
	
	
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir "Ingrese la nota ", i
		Leer notas[i]
	FinPara
	
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir "La nota número ", i " es igual a: ", notas[i]
	FinPara
	
	
FinAlgoritmo
