*** Settings ***
Documentation    Selecionado uma opeção

Resource    ../resources/main.resource

Test Setup     Start
Test Teardown  Finish

*** Test Cases ***
Selecionado uma opeção
    Dado que entrei no site select2
    Então verifico se estou na pagina correta
    E selecino a opeção Owen Wilson
    E verifico se foi selecionado o comediante 5 
    
