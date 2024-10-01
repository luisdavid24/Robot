*** Test Cases ***
Prueba de Suma SimpleString
    ${resultado}=    Evaluate    2 + 2
    ${resultado}=    Convert To String    ${resultado}
    Should Be Equal    ${resultado}    4

Prueba de Suma SimpleNumero
    ${resultado}=    Evaluate    2 + 2
    Should Be Equal As Numbers    ${resultado}    4

Prueba de resta propia
    ${resultado}=    Evaluate    2 - 4
    Should Be Equal As Numbers    ${resultado}    -2
