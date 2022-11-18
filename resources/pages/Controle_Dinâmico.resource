*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Enable/disable}       https://training-wheels-protocol.herokuapp.com/dynamic_controls

*** Keywords ***
Quando entra verifico se é o site correto
    Element Text Should Be       xpath=//h4[contains(.,'Dynamic Controls')]    Dynamic Controls

E habilito para escrever "${texto}"
    Click Button    css=button[autocomplete='off']
    Wait Until Element Is Enabled    css=input[id='movie']
    Input Text    css=input[id='movie']    ${texto}

E desabilito a opeção
    Click Button    css=button[autocomplete='off']
    Wait Until Element Contains    css=button[autocomplete='off']    Habilita