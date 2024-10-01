*** Comments ***
"""
Utilizar la biblioteca SeleniumLibrary para automatizar la navegación y validación de texto en una página web.

Instala la biblioteca Selenium para Robot Framework:
pip install robotframework-seleniumlibrary

"""


*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Validar Título de Página
    Open Browser    https://google.com    chrome
    Title Should Be    Google
    Close Browser
