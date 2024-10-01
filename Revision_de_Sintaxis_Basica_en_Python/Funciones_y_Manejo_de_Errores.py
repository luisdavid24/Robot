#Funciones y Manejo de Errores
#Funciones: Bloques de código reutilizables que realizan una tarea específica.
#Manejo de Errores: Uso de try, except, finally para manejar excepciones y errores en el código.

#Funciones
def saludar(nombre):
    return f"Hola, {nombre}!"

mensaje = saludar("Luis")
print(mensaje)

#Manejo de errores
try:
    division = 10 / 0
except ZeroDivisionError:
    print("Error: No se puede dividir por cero.")
finally:
    print("Operación completada.")

# Ejercicio Práctico:

def sumarNumero(num1,num2):
    return num1+num2
numeroResultado=sumarNumero(4,5)
print(numeroResultado)


def dividirError(num1,num2):
    try:
        division = num1 / num2
    except ZeroDivisionError:
        print("Error: No se puede dividir por cero.")
    finally:
        print("Operación completada.")
    

dividirError(2,1)
