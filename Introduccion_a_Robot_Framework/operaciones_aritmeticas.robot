*** Test Cases ***
Prueba de Suma
    ${ResultadoSuma}=    Evaluate    4+4
    ${ResultadoSuma}=    Convert To String    ${ResultadoSuma}
    Should Be Equal    ${ResultadoSuma}    8

Prueba de resta
    ${ResultadoResta}=    Evaluate    4-3
    Should Be Equal As Numbers    ${ResultadoResta}    1

Prueba de division
    ${ResultadoDivision}=    Evaluate    4/2
    Should Be Equal As Numbers    ${ResultadoDivision}    2

Prueba de multiplicacion
    ${ResultadoMultiplicacion}=    Evaluate    3*4
    ${ResultadoMultiplicacion}=    Convert To String    ${ResultadoMultiplicacion}
    Should Be Equal    ${ResultadoMultiplicacion}    12
