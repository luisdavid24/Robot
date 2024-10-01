*** Variables ***
${ZANAHORIA}        Conejo
${SALUDO_GLOBAL}    Hola desde la variable global


*** Test Cases ***
Caso de Prueba 1
    Log    ${ZANAHORIA}

Caso de Prueba 2
    ${DESPEDIDA}=    Set Variable    Adiós
    Log    ${DESPEDIDA}${ZANAHORIA}

Caso Complejo de Prueba
    Log    Caso Complejo: Empezando el test...
    Log    ${SALUDO_GLOBAL}

    Log    Paso 1: Llamar palabra clave con variables locales
    ${ZANAHORIA_lOCAL}=    Set Variable    Fresas

    Log    Paso 2: Llamar palabra clave que modifica variable global
    ${ZANAHORIA}=    Set Variable    Fresas

    Log    Paso 3: Verificar cambios en la variable global
    Log    Valor de la variable global después del cambio: ${SALUDO_GLOBAL}

    Log    Paso 4: Uso de palabra clave con argumentos
    log    ${ZANAHORIA_lOCAL} Luis

    Log    Fin del Caso Complejo de Prueba


*** Keywords ***
Llamar Palabra Clave Local
    ${SALUDO_LOCAL}=    Set Variable    Hola desde la variable local
    Log    Este es un mensaje local: ${SALUDO_LOCAL}
    # Probar si se puede acceder a una variable local fuera del contexto de esta palabra clave
    Log    Intento de acceder a la variable global dentro de una palabra clave local: ${SALUDO_GLOBAL}

Modificar Variable Global
    Set Global Variable    ${SALUDO_GLOBAL}    Hola desde la palabra clave que modificó la variable global
    Log    Variable global modificada: ${SALUDO_GLOBAL}

Llamar Palabra Clave con Argumentos
    [Arguments]    ${NOMBRE}
    ${MENSAJE}=    Catenate    SEPARATOR=    Hola,    ${NOMBRE}    desde la palabra clave con argumentos.
    Log    ${MENSAJE}
