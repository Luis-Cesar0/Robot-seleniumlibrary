*** Settings ***
Library                               SeleniumLibrary

*** Variables ***
${loguin_form}    https://training-wheels-protocol.herokuapp.com/login

*** Keywords ***
fazer o loguin  
    Go To    ${loguin_form}
    [Arguments]    ${loguin}    ${senha}
    Input Text    css=input[name=username]    ${loguin}
    Input Text    css=input[name=password]    ${senha}
    Click Button    class:btn-login
verificar messagem
    [Arguments]    ${messagem}
    ${local_messagem}=    Get WebElement    id:flash
    Should Contain    ${local_messagem.text}     ${messagem}
            