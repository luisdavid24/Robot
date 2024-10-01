*** Variables ***
${SALUDO_GLOBAL}    Hola desde la variable global


*** Test Cases ***
Caso Complejo con Bloque IF/ELSE
    Log    Iniciando el test...

    # Modificar la variable global
    Set Global Variable    ${SALUDO_GLOBAL}    Hola Mundo

    # Condición usando IF/ELSE
    IF    '${SALUDO_GLOBAL}' == 'Hola Mundo'
        Log    El saludo es correcto
        Modificar Saludo
    ELSE
        Log    El saludo no es correcto
    END

    Log    Fin del test


*** Keywords ***
Modificar Saludo
    Log    Modificando el saludo...
    Set Global Variable    ${SALUDO_GLOBAL}    ¡Saludos modificados!
    Log    Nuevo saludo: ${SALUDO_GLOBAL}
