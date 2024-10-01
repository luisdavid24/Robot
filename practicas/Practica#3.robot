*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}                  https://demoqa.com/alerts
${URL2}                 https://demoqa.com/automation-practice-form
${URL3}                 https://demoqa.com/buttons
${URL4}                 https://demoqa.com/links
${URL5}                 https://demoqa.com/dynamic-properties
${URL6}                 https://demoqa.com/alerts
${URL7}                 https://demoqa.com/frames
${URL8}                 https://demoqa.com/modal-dialogs
${URL9}                 https://demoqa.com/date-picker
${URL10}                https://demoqa.com/text-box
${URL11}                https://demoqa.com/accordian
${URL12}                https://demoqa.com/automation-practice-form
${BROWSER}              chrome
${texto_a_copiar}       ${EMPTY}
${valor_deslizador}     ${EMPTY}


*** Test Cases ***
Prueba
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    1s
    Click Button    id=alertButton
    Sleep    1s
    Handle Alert
    Sleep    1s
    Click Element    xpath=//span[text()='Browser Windows']
    Sleep    1s
    Click Button    id=tabButton
    Sleep    1s
    Switch Window    new
    Sleep    1s
    Close Window
    Sleep    1s
    Switch Window    main
    Sleep    1s

    Click Element    id=windowButton
    Sleep    1s

    Switch Window    new
    Maximize Browser Window
    Sleep    1s
    Close Window
    Sleep    1s
    Switch Window    main
    Execute Javascript    window.scrollTo(0, 550)
    Sleep    2s

    Click Element    id=messageWindowButton
    Sleep    2s

    Switch Window    new
    Maximize Browser Window
    Sleep    2s
    Close Window
    Sleep    1s
    Switch Window    main
    [Teardown]    Close Browser

Prueba#2
    Open Browser    ${URL2}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Input Text    id=firstName    LuisDavid
    Sleep    2s
    Execute Javascript    window.scrollTo(0, 400)
    Click Element    id=dateOfBirthInput
    Sleep    2s
    Click Element    class=react-datepicker__year-select
    Sleep    2s
    Click Element
    ...    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/form/div[5]/div[2]/div[2]/div[2]/div/div/div[2]/div[1]/div[2]/div[2]/select/option[4]
    Sleep    2s
    Click Element    class=react-datepicker__month-select
    Sleep    2s
    Click Element
    ...    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/form/div[5]/div[2]/div[2]/div[2]/div/div/div[2]/div[1]/div[2]/div[1]/select/option[4]
    Sleep    2s
    Click Element
    ...    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/form/div[5]/div[2]/div[2]/div[2]/div/div/div[2]/div[2]/div[1]/div[7]
    Sleep    2s
    Click Element    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/form/div[7]/div[2]/div[1]/label
    Sleep    2s
    Choose File    id=uploadPicture    ${CURDIR}./documento.pdf
    Sleep    2s
    Execute Javascript    window.scrollTo(0, 800)
    Input Text    id=currentAddress    Prueba
    Sleep    2s
    Click Element    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/form/div[10]/div[2]/div/div/div[1]
    # Sleep    2s
    # Click Element    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/form/div[10]/div[2]/div/div/div[1]
    # Press Key    class=css-1wa3eu0-placeholder    down
    Sleep    2s
    # Simular la pulsación de la tecla "Enter" para seleccionar la opción
    Press Key    class=/html/body/div[2]/div/div/div/div[2]/div[2]/form/div[10]/div[2]/div/div/div[1]/div[1]    enter
    Sleep    2s

    [Teardown]    Close Browser

Prueba#3
    Open Browser    ${URL3}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Execute Javascript    window.scrollTo(0, 300)
    Double Click Element    id=doubleClickBtn
    Sleep    2s
    Open Context Menu    id=rightClickBtn
    Sleep    2s
    [Teardown]    Close Browser

Prueba#4
    Open Browser    ${URL4}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Execute Javascript    window.scrollTo(0, 250)
    Sleep    2s
    Click Element    id=simpleLink
    Sleep    2s
    ${windowhandles}    Get Window Handles
    Switch Window    ${windowhandles}[1]
    Sleep    2s
    close window
    Sleep    2s
    Switch Window    ${windowhandles}[0]
    Sleep    2s
    Click Element    xpath=/html/body/div[2]/div/div/div/div[1]/div/div/div[1]/div/ul/li[7]/span
    Sleep    0.5s
    Execute Javascript    window.scrollTo(0, 450)
    Sleep    2s
    Click Element    xpath=//*[@id="app"]/div/div/div/div[2]/div[2]/a[2]
    Sleep    2s
    Go Back
    Sleep    2s
    [Teardown]    Close Browser

Prueba#5
    Open Browser    ${URL5}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Execute Javascript    window.scrollTo(0, 150)
    Sleep    5s
    Click Button    id=colorChange
    Wait Until Element Is Visible    id=enableAfter    timeout=5s
    Wait Until Element Is Enabled    id=enableAfter    timeout=5s
    Click Button    id=enableAfter
    Sleep    1s
    Wait Until Element Is Visible    id=visibleAfter    timeout=5s
    Sleep    1s
    Click Button    id=visibleAfter
    Sleep    2s
    [Teardown]    Close Browser

Prueba#6
    Open Browser    ${URL6}    ${BROWSER}
    Maximize Browser Window
    Execute Javascript    window.scrollTo(0, 210)
    Wait Until Element Is Enabled    xpath=//*[@id="javascriptAlertsWrapper"]/div[4]/div[1]/span    timeout=5s
    Sleep    1s
    Click Element    id=alertButton
    Handle Alert
    Sleep    1s
    Click Element    id=confirmButton
    Sleep    2s
    Handle Alert
    Sleep    2s
    Click Element    id=promtButton
    Sleep    2s
    Input Text Into Alert    Luis
    Sleep    2s
    [Teardown]    Close Browser

Prueba#7
    Open Browser    ${URL7}    ${BROWSER}
    Maximize Browser Window
    Execute Javascript    window.scrollTo(0, 210)
    Sleep    1s

    ${element}    Get WebElement    id=frame2Wrapper
    # Scroll hacia abajo
    Execute JavaScript    arguments[0].scrollIntoView(true);    ${element}
    Sleep    1s
    # Scroll hacia arriba
    # Execute JavaScript    arguments[0].scrollIntoView(false);    ${element}
    # Scroll hacia la izquierda (ajustando la posición)
    # Execute JavaScript    arguments[0].scrollLeft = arguments[0].scrollLeft - 100;    ${element}
    [Teardown]    Close Browser

Prueba#8
    Open Browser    ${URL8}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Enabled    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/h1    timeout=5s
    Execute Javascript    window.scrollTo(0, 210)
    Click Element    id=showSmallModal
    Wait Until Element Is Visible    id=closeSmallModal    timeout=5s
    Click Element    id=closeSmallModal
    Click Element    id=showLargeModal
    Wait Until Element Is Visible    id=closeLargeModal    timeout=5s
    Click Element    id=closeLargeModal
    Sleep    1s
    Click Element    xpath=/html/body/div[2]/div/div/div/div[1]/div/div/div[4]/span/div/div[2]
    Wait Until Element Is Visible
    ...    xpath=/html/body/div[2]/div/div/div/div[1]/div/div/div[4]/div/ul/li[1]/span
    ...    timeout=5s
    Click Element    xpath=/html/body/div[2]/div/div/div/div[1]/div/div/div[4]/div/ul/li[1]
    Execute Javascript    window.scrollTo(0, 300)
    Click Element    id=section1Heading
    Wait Until Element Is Visible
    ...    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/div/div[1]/div[2]/div/p
    ...    timeout=5s
    ${resultado}    Get Text    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/div/div[1]/div[2]/div/p
    Log    El resultado de la búsqueda es: ${resultado}
    Click Element    xpath=/html/body/div[2]/div/div/div/div[1]/div/div/div[4]/div/ul/li[2]
    Execute Javascript    window.scrollTo(0, 300)
    Wait Until Element Is Visible
    ...    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/div[1]/div/div/div/div/div[1]
    ...    timeout=5s
    Input Text
    ...    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/div[1]/div/div/div/div/div[1]/div[2]/div/input
    ...    LuisDavid
    Click Element    xpath=/html/body/div[2]/div/div/div/div[1]/div/div/div[4]/div/ul/li[3]/span
    Execute Javascript    window.scrollTo(0, 210)
    Click Element    id=datePickerMonthYearInput
    Sleep    2s
    [Teardown]    Close Browser

Prueba#9
    Open Browser    ${URL9}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Enabled    id=datePickerMonthYearInput    timeout=5s
    Execute Javascript    window.scrollTo(0, 210)
    Click Element    id=datePickerMonthYearInput
    Click Element
    ...    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/div[1]/div[2]/div[2]/div[2]/div/div/div[2]/div[1]/div[2]/div[2]/select/option[27]
    Click Element
    ...    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/div[1]/div[2]/div[2]/div[2]/div/div/div[2]/div[1]/div[2]/div[1]/select/option[5]
    Click Element
    ...    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/div[1]/div[2]/div[2]/div[2]/div/div/div[2]/div[2]/div[4]/div[2]
    Click Element    xpath=/html/body/div[2]/div/div/div/div[1]/div/div/div[4]/div/ul/li[4]/span

    Sleep    2s
    [Teardown]    Close Browser

Prueba#10
    Open Browser    ${URL10}    ${BROWSER}
    Maximize Browser Window
    Execute Javascript    window.scrollTo(0, 210)
    # Para dar tab
    Press Keys    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/form/div[3]/div[2]/textarea    \t
    # Para dar enter
    Press Keys    id=submit    \n
    Sleep    2s
    [Teardown]    Close Browser

Prueba#11
    Open Browser    ${URL11}    ${BROWSER}
    Maximize Browser Window
    Execute Javascript    window.scrollTo(0, 210)
    # Press Keys    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/div/div[1]/div[2]/div/p    ^c
    # Click Element    xpath=/html/body/div[2]/div/div/div/div[1]/div/div/div[4]/div/ul/li[2]/span
    # Sleep    2s
    # Press Keys    xpath=//*[@id="autoCompleteMultipleContainer"]/div/div[1]    ^v
    # Sleep    2s

    ${texto_original}    Get Text    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/div/div[1]/div[2]/div/p
    # Copiar el texto a una variable
    ${texto_a_copiar}    Set Variable    ${texto_original}
    Sleep    2s
    # Seleccionar el elemento destino
    Click Element    xpath=/html/body/div[2]/div/div/div/div[1]/div/div/div[4]/div/ul/li[2]/span
    Sleep    2s
    Execute Javascript    window.scrollTo(0, 210)
    # Pegar el texto
    Execute JavaScript    document.execCommand("paste");
    Sleep    2s
    [Teardown]    Close Browser

Prueba#12
    Open Browser    ${URL11}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Go To    https://www.google.com
    Sleep    2s
    Go To    https://www.python.org
    Sleep    2s
    [Teardown]    Close Browser

Prueba#13
    Open Browser    ${URL12}    ${BROWSER}
    Maximize Browser Window
    Sleep    1s
    Execute Javascript    window.scrollTo(0, 600)
    Press Keys    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/form/div[10]/div[2]/div/div/div[1]/div[1]    Hary
    Press Keys
    ...    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/form/div[10]/div[2]/div/div/div[1]/div[1]
    ...    ENTER
    Sleep    2s
    [Teardown]    Close Browser

# Verificar si un elemento contiene texto específico
# Element Should Contain    xpath=//h1    Texto Esperado

# Verificar si un elemento es visible
# Element Should Be Visible    xpath=//div[@id="mi-elemento"]

# Verificar el texto exacto de un elemento
# Element Should Be    xpath=//p[@class="descripcion"]    Texto Exacto Esperado

# Obtener el atributo href de un enlace y verificar su valor
# ${href}=    Get Element Attribute    xpath=//a[@id="mi-enlace"]    href
# Should Be Equal As Strings    ${href}    https://tuejemplo.com/enlace-esperado

# Verificar el título de la página
# Title Should Be    Título Esperado

# Verificar que un texto específico esté presente en toda la página
# Page Should Contain    Texto Esperado
