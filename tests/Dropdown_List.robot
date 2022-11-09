*** Settings ***
Resource        ../resources/main.resource

Test Setup       Start
Test Teardown    Finish

*** Test Cases ***
Selecionado um personagem da marvel
    Dado que entro no site Dropdown
    Então verifico se a uma "Dropdown list"
    E seleciono o personagens "3"
    

