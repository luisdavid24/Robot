#Estructuras de Control
edad = 18
if edad >= 18:
    print("Eres mayor de edad.")
else:
    print("Eres menor de edad.")


# Bucle for
for i in range(5):
    print(f"Iteración {i}")

# Bucle while
contador = 0
while contador < 5:
    print(f"Contador: {contador}")
    contador += 1

#Ejercicio Práctico:
numeroEjercicio=-10
if numeroEjercicio>0:
    print("El numero positivo")
elif numeroEjercicio<0:
    print("El numero es negativo")
else:
    print("El numero es cero")
    
for i in range(1,11):
    print(f"Iteración {i}")
    
contadorEjercicio = 10
while contadorEjercicio > 0:
    print(f"Contador ejercicio: {contadorEjercicio}")
    contadorEjercicio -= 1
