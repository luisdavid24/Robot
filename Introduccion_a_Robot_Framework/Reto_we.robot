*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}          https://www.google.com/
${BROWSER}      chrome


*** Test Cases ***
Validar Título de Página
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    Google
    [Teardown]    Close Browser

Validar Presencia del Botón de Búsqueda
    Open Browser    ${URL}    ${BROWSER}
    Element Should Be Visible    name:q
    [Teardown]    Close Browser

Validar Presencia del Logo de Google
    Open Browser    ${URL}    ${BROWSER}
    Element Should Be Visible    css=img[alt="Google"]
    [Teardown]    Close Browser
