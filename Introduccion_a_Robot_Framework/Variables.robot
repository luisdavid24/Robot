*** Variables ***
${SALUDO}       Hola


*** Test Cases ***
Caso de Prueba 1
    Log    ${SALUDO}

Caso de Prueba 2
    ${DESPEDIDA}=    Set Variable    Adiós
    Log    ${DESPEDIDA}
