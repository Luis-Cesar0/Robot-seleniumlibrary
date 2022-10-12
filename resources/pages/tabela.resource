*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${tabela}               https://training-wheels-protocol.herokuapp.com/tables
        
*** Keywords ***
ir para tabela
    Go To               ${tabela}

selecionar linha e valor
    [Arguments]         ${linha}     ${valor}
   ${target}            Get WebElement    xpath:.//tr[contains(., '${linha}')]
   Log                  ${target.text}
     Should Contain     ${target.text}    ${valor}
    