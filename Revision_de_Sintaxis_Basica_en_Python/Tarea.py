"""
Convertidor de Temperatura: Escribe un programa que convierta una 
temperatura dada en grados Celsius a Fahrenheit y viceversa.
Utiliza funciones para realizar las conversiones.
"""


def convetidor(Temperatura,tipo):
    if tipo=="Celsius":
        return convertidorCelsiusAFahrenheit(Temperatura)
    else:
        return convertidorCelsiusAFahrenheit(Temperatura)
def convertidorCelsiusAFahrenheit(Celsius):
    return Celsius*33.8
def convertidorCelsiusAFahrenheit(Fahrenheit):
    return Fahrenheit/33.8


#print(convetidor(20,"Celsius"))


"""
Calculadora Simple: Crea una calculadora que pueda realizar suma, resta, multiplicación y división utilizando funciones. 
Asegúrate de manejar los errores de división por cero.Asegúrate de manejar los errores de división por cero.
"""


def calculadora(num1,num2,operacion):
    if operacion == "Suma":
        print(f"Resultado de la suma: {num1+num2}")
    elif operacion == "Resta":
        print(f"Resultado de la Resta: {num1-num2}")
    elif operacion == "Multiplicar":
        print(f"Resultado de la multiplicacion: {num1*num2}")
    else:
        if num2==0:
            print("No se puede divir por cero")
        else:
            print(f"Resultado de la Division es: {num1/num2}")
            
#calculadora(2,3,"Resta")
"""
Procesador de Texto: Escribe un programa que lea un texto desde el teclado y cuente la 
cantidad de palabras, la cantidad de letras, y determine la palabra más larga.
Utiliza funciones para dividir estas tareas.
"""
# Función para contar palabras
def contar_palabras(texto):
    palabras = texto.split()  # Dividimos el texto en palabras
    return len(palabras)
# Función para contar letras
def contar_letras(texto):
    letras = [letra for letra in texto if letra.isalpha()]  # Solo contamos letras
    return len(letras)
# Función para encontrar la palabra más larga
def palabra_mas_larga(texto):
    palabras = texto.split()
    if palabras:  # Si la lista de palabras no está vacía
        return max(palabras, key=len)
    return None  # En caso de que no haya palabras
# Función principal
def procesador_texto():
    # Leer el texto ingresado por el usuario
    texto = input("Ingresa un texto: ")
    
    # Contar palabras
    total_palabras = contar_palabras(texto)
    
    # Contar letras
    total_letras = contar_letras(texto)
    
    # Encontrar la palabra más larga
    larga = palabra_mas_larga(texto)
    
    # Mostrar resultados
    print(f"Total de palabras: {total_palabras}")
    print(f"Total de letras: {total_letras}")
    print(f"La palabra más larga es: '{larga}' con {len(larga)} letras." if larga else "No se encontró ninguna palabra.")
# Ejecutar el programa
procesador_texto()










