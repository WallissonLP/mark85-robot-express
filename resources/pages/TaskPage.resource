*** Settings ***
Documentation        Ações e elementos da página de listagem de tarefas

Library        Browser

*** Keywords ***
Task shold be registered
    [Arguments]        ${task_name}

    Wait For Elements State    css=.task-todo >> text=${task_name}
    ...        visible    5

Task shold be complete
    [Arguments]        ${task_name}

    ${element}    Set Variable    css=.task-todo >> text=${task_name}

    Wait For Elements State       ${element}
    ...        visible    5
  
    Get Style    ${element}    text-decoration-line    equal    line-through        # Valida que o texto da tarefa ficou taxado
   
Mark task as completed
    [Arguments]    ${task_name}

    ${element}    Set Variable
    ...    xpath=//strong[text()="${task_name}"]/..//button[@class="item-toggle"]    # Essa kayword é para concluir a tarefa, o xpath clica no botão de concluir

    Wait For Elements State    ${element}    visible    5

    Click    ${element}

Request removal
    [Arguments]    ${task_name}

    ${element}    Set Variable
    ...    xpath=//strong[text()="${task_name}"]/..//button[@class="task-remove"]    # Essa kayword é para apagar a tarefa, o xpath clica no botão da lixeira

    Wait For Elements State    ${element}    visible    5

    Click    ${element}

Task shold not exist
    [Arguments]        ${task_name}

    Wait For Elements State    css=.task-todo >> text=${task_name}
    ...        detached    5