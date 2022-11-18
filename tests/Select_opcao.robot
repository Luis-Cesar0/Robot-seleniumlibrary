*** Settings ***
Documentation    Selecionado uma opeção

Resource    ../resources/main.resource

Test Setup     Start
Test Teardown  Finish

*** Test Cases ***
Selecionado uma opeção
    Dado que entro no site ${Select}
    Então verifico se o titulo da paginna Select 2 - Melhores atores de Comédia segundo o Papito
    E selecino a opeção Owen Wilson
    E verifico se foi selecionado o comediante 5 
    
Selecionado multiplas opeções
    Dado que entro no site ${Select2}
    Então verifico se o titulo da paginna Select 2 - Melhores atores de Comédia segundo o Papito
    E escolhos os atores Adam Sandler,Kevin James e Jim Carrey
    E verifico se 1,3 e 4 foram selecinados
