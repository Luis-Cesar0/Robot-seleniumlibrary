*** Settings ***
Library                            SeleniumLibrary

*** Variables ***
${dropdownn}    https://training-wheels-protocol.herokuapp.com/dropdown


*** Keywords ***
Dado que entro no site Dropdown
    Go To    ${dropdownn}
   
Então verifico se a uma "Dropdown list"
    Element Should Be Visible    xpath=//h3[contains(.,'Dropdown List')]    Dropdown List

E seleciono o personagens "${personagem}"
    Select From List By Index    css=select[id='dropdown']    ${personagem}
    # Click Element    select[id='dropdown']