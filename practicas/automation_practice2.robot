*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}          http://automationpractice.com/
${BROWSER}      chrome
${NAME}         Luis David Lopez
${EMAIL}        Luis@Example


*** Test Cases ***
Primera prueba
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    1s
    Click Element    xpath=/html/body/center/center/font/a/img
    Sleep    2s
    Page Should Contain    VPS Hosting
    Sleep    2s
    Title Should Be    Web Hosting: Fast, Secure & Reliable Websites | InMotion Hosting
    ${title} =    Get Title
    Log    El título de la página es: ${title}

    Sleep    5s

    [Teardown]    Close Browser
