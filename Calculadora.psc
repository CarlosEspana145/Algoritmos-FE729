
SubProceso MostarMenu
	Escribir "===================================="
	Escribir "Calculadora"
	Escribir "===================================="
	Escribir "[1] 	Suma"
	Escribir "[2] Resta"
	Escribir "[3] Multiplicación"
	Escribir "[4] División"
FinSubProceso


Funcion resultadosuma <- suma(a, b, c, d, e)
	Definir resultadosuma Como Entero
	resultadosuma <- a + b + c + d + e
FinFuncion

Funcion resultadoresta <- resta(a, b)
	Definir resultadoresta Como Entero
	resultadoresta <- a - b
FinFuncion

Funcion resultadomulti <- multi(a, b, c)
	Definir resultadomulti Como Entero
	resultadomulti <- a * b * c
FinFuncion

Funcion resultadodiv <- div(a, b)
	Definir resultadodiv Como Entero
	resultadodiv <- a / b
FinFuncion

SubProceso Mostrarresultado(AlgunValor)
	Escribir "El resultado de su operación es: " AlgunValor
FinSubProceso


Algoritmo Calculadora
	Definir opmenu Como Entero
	Definir num1, num2, num3, num4, num5, resultado Como Real
	
	
	
	MostarMenu
	Escribir "Seleccione una de las cuatro opciones"
	Leer opmenu
	
	Segun opmenu Hacer
		1:
			Escribir "Esta es la opción Suma"
			Escribir "Ingrese cinco números enteros"
			Leer num1, num2, num3, num4, num5 
			resultado <- suma(num1, num2, num3, num4, num5)
			Mostrarresultado(resultado)	
		2:
			Escribir "Esta es la opción Resta"
			Escribir "Ingrese dos números"
			Leer num1, num2 
			resultado <- resta(num1, num2)
			Mostrarresultado(resultado)
		3:
			Escribir "Esta es la opción Multiplicación"
			Escribir "Ingrese tres números"
			Leer num1, num2, num3
			resultado <- multi(num1, num2, num3)
			Mostrarresultado(resultado)
		4:
			Escribir "Esta es la opción División"
			Escribir "Ingrese dos números"
			Leer num1, num2
			resultado <- div(num1, num2)
			Mostrarresultado(resultado)


	FinSegun
FinAlgoritmo
