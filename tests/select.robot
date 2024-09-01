*** Settings ***
Resource    ../resources/base.resource

*** Test Cases ***
Deve selecionar a opção Javascript
    Start session
    Get started
    Navigate to    Check e Radio
    Go to item    Botões de radio    Escolha sua linguagem preferida

    Mark options select    Ruby
    Mark options select    Python
    Mark options select    Java
    Mark options select    Javascript

    # Wait Until Page Contains    Isso é um clique simples 
    Sleep    3
    Close session

*** Keywords ***
Mark options select
    [Arguments]                      ${SELECT_OPTIONS}

    Click Element                    xpath=//android.widget.RadioButton[contains(@text,"${SELECT_OPTIONS}")]