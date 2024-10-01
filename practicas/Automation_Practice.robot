*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}          https://automationexercise.com/
${BROWSER}      chrome
${NAME}         Luis David Lopez
${EMAIL}        Luis@Example


*** Test Cases ***
Primera prueba
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    1s
    Click Element    xpath=/html/body/header/div/div/div/div[2]/div/ul/li[4]/a
    Sleep    2s
    Input Text    xpath=/html/body/section/div/div/div[3]/div/form/input[2]    ${NAME}
    Sleep    2s
    Input Text    xpath=/html/body/section/div/div/div[3]/div/form/input[3]    ${EMAIL}
    Sleep    2s
    Go To    ${URL}
    Title Should Be    Automation Exercise
    Sleep    0.5s
    Execute Javascript    window.scrollTo(0, 600)
    # Click Element    xpath=/html/body/header/div/div/div/div[2]/div/ul/li[1]/a
    Click Element    xpath=/html/body/section[2]/div/div/div[1]/div/div[3]/div/ul/li[1]/a
    Sleep    1s
    Execute Javascript    window.scrollTo(0, 150)
    Mouse Over    xpath=/html/body/section/div/div[2]/div[2]/div/div[2]/div/div[1]
    Sleep    2s
    Click Element    xpath=/html/body/section/div/div[2]/div[2]/div/div[2]/div/div[1]/div[2]/div/a
    Sleep    2s
    Click Element    xpath=/html/body/section/div/div[2]/div[2]/div/div[1]/div/div/div[3]/button
    Sleep    2s
    Click Element    xpath=/html/body/header/div/div/div/div[2]/div/ul/li[3]/a

    Sleep    5s

    [Teardown]    Close Browser
