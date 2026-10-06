Algoritmo Evaluar_Estudiante
	Definir NOTA_MINIMA Como Entero
	Definir notaFinal Como Real
	
	NOTA_MINIMA <- 61
	
	Escribir "Nota Final"
	Leer notaFinal
	
	Si notaFinal >= NOTA_MINIMA Entonces
		Escribir "Aprobado"
	SiNo
		Escribir "Reprobado"
	FinSi
	
	Si notaFinal >= 90 Entonces
		Escribir "Felicitaciones"
	FinSi
	
FinAlgoritmo
