Algoritmo Ejemplo_Notas2
	// El propósito del programa es sumar los dos parciales y el examen final para indicar si el estudiante aprobó o reprobó el curso.
	
	//Declarar Variables
	Definir NOTA_MINIMA Como Entero
	Definir parcial1, parcial2, examenfinal, notafinal Como Real
	Definir aprobado Como Logico
	
	
	//Establecer datos
	NOTA_MINIMA <- 61
	
	
	Escribir "Primer parcial (0 a 30)"
	Leer parcial1
	Escribir "Segundo parcial (0 a 30)"
	Leer parcial2
	Escribir "Examen final (0 a 40)"
	Leer examenfinal
	
	//Cálculo
	notafinal <- parcial1 + parcial2 + examenfinal
	aprobado <- notafinal >= NOTA_MINIMA
	
	//Resultados
	Escribir "Nota final: ", notafinal
	Escribir "Aprobado: ", aprobado
	
	
FinAlgoritmo
