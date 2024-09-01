*** Settings ***
Resource    ../resources/base.resource

*** Test Cases ***
Deve logar com sucesso
    Start session
    Get started
    Navigate to    Formulários
    Go to item    Login    Olá Padawan, vamos testar o login?
    
    Logar com email e senha    yoda@qax.com    jedi    Boas vindas, logado você está.
    Sleep    3
    Close session

Não deve logar com senha incorreta
    Start session
    Get started
    Navigate to    Formulários
    Go to item    Login    Olá Padawan, vamos testar o login?
    
    Logar com email e senha    yoda@qax.com    sith    Oops! Credenciais incorretas.
    Sleep    3
    Close session

*** Keywords ***
Logar com email e senha
    [Arguments]    ${EMAIL}    ${SENHA}    ${MENSAGEM_ESPERADA}
    
    Input Text        id=com.qaxperience.yodapp:id/etEmail    ${EMAIL}
    Input Text        id=com.qaxperience.yodapp:id/etPassword    ${SENHA}
    Click Element        id=com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains    ${MENSAGEM_ESPERADA}