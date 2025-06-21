*** Settings ***

Library        libs/database.py
Library        Browser
Library        JSONLibrary

Resource        env.resource

Resource        pages/components/Header.resource
Resource        pages/components/Alert.resource
Resource        pages/components/Notice.resource

Resource        pages/SignupPage.resource
Resource        pages/LoginPage.resource
Resource        pages/TaskCreatePage.resource
Resource        pages/TaskPage.resource

Resource        services.resource

*** Keywords ***
Start Session
    New Browser    browser=${BROWSER}    headless=False
    New Page        ${BASE_URL}

# Helpers
Get fixture
    [Arguments]        ${file_name}        ${scenario}

    ${data}    Load Json From File         
    ...    ${EXECDIR}/resources/fixtures/${file_name}.json
    ...    encoding=utf-8
 
    [Return]        ${data}[${scenario}]

Reset user from database
    [Arguments]        ${user}

    # Dado que eu tenho um novo usuario
    Clear user from database         ${user}[email]        # Limpa os dados no banco de dados
    Insert user from database        ${user}               # Reconstroi o usuario no dados no banco de dados

Create a new task from API
    [Arguments]        ${data}

    # E que esse usuario ja cadastrou uma tarefa

    POST user session      ${data}[user]                         # Faz login com o novo usuario que foi recontruido
    POST a new task        ${data}[task]                         # Cadastrar uma nova tarefa via API

Do login
    [Arguments]        ${user}

    # E que estou logado na aplicação web

    Submit login form           ${user}
    User should be logger in    ${user}[name]