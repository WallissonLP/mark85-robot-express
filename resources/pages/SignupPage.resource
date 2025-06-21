*** Settings ***
Documentation        Elementos e ações da pagina de cadastro

Library        Browser
Resource       ../env.resource

*** Keywords ***
Go to signup page
    Go To    ${BASE_URL}/signup

    Wait For Elements State   css=h1    visible    5                    #Esse elemento é para a automação esperar até 5 segundos que o elemento seja apresentado na tela.
    Get Text                  css=h1    equal      Faça seu cadastro    #Esse elemento já é pra coletar a informação que quero.

Submit signup form
    [Arguments]    ${user}

    Fill Text    css=input[name=name]        ${user}[name]  #Elemento para inserir o valor no campo.
    Fill Text    css=input[name=email]       ${user}[email]
    Fill Text    css=input[name=password]    ${user}[password]

    Click    css=button[type=submit] >> text=Cadastrar