"""Nuevo Reto para Practicar: Análisis de Texto Avanzado
Crea un programa que lea un texto y realice lo siguiente:

Contar el número de vocales y consonantes.
Calcular la frecuencia de cada letra: Cuántas veces aparece cada letra en el texto.
Determinar si el texto es un palíndromo: Un palíndromo es una palabra o frase que se lee igual al derecho y al revés, 
ignorando espacios y signos de puntuación (por ejemplo, "Anita lava la tina")."""

def palindromo(palabra):
    i=0
    j=len(palabra)-1
    while i<j:
        if palabra[i]!= palabra[j]:
            return False
        i+=1
        j-=1
    return True

def letraFrecuencia(palabra):
    letras = [letra for letra in palabra if letra.isalpha()] 
    resultado={}
    for letra in palabra:
        if letra.isalpha():
            letra = letra.lower()
            if letra in resultado:
                resultado[letra] += 1
            else:
                resultado[letra] = 1
    
    return resultado
    

def contarVocalesConsonates(palabra):
    vocales = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']  
    consonantes = [] 
    total_vocales = 0
    total_consonantes = 0
    letras = [letra for letra in palabra if letra.isalpha()] 
    for i in range(len(letras)):
        if letras[i] in vocales:
            total_vocales += 1
        else:
            total_consonantes += 1

    return total_vocales, total_consonantes

#vocales, consonantes = contarVocalesConsonates("Anita lava la tina")
#print(f"Vocales: {vocales}, Consonantes: {consonantes}")


#print(letraFrecuencia("Anita lava la tina"))

print(palindromo("anlnaf"))