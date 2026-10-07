Algoritmo NumeroSecreto
	Definir secret, elec,intentos Como Entero
	
	secret <- azar(50) + 1
	intentos = 0
	

	
	Repetir
		Escribir "Ingrese un número de 1 a 50"
		Leer elec
		Si elec > 0 y elec <= 50 Entonces
			Si elec > secret Entonces
				Escribir "Incorrecto"
				Escribir "El número secreto es más bajo"
				intentos <- intentos + 1
			SiNo
				Si  elec < secret Entonces
					Escribir "Incorrecto"
					Escribir "El número secreto es más alto"
					intentos <- intentos + 1
				FinSi
				
			FinSi
		SiNo
			Escribir "Por favor ingrese un número entre 1 y 50"
		FinSi
		
		
		
		
	Hasta Que intentos = 5 o elec  = secret
	
	Si elec = secret Entonces
		intentos <- intentos + 1
		Escribir "Felicitaciones, lo lograste en intentos: ", intentos 
	SiNo
		Si intentos = 5 Entonces
			Escribir "Lo siento mucho no lograste adivinar el número secreto"
			
			Escribir "El número secreto es: ", secret
		FinSi
		
	FinSi
	
FinAlgoritmo
