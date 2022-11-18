*** Settings ***
Documentation    Cntrole Dinâmico

Resource    ../resources/main.resource

Test Setup       Start
Test Teardown    Finish

*** Test Cases ***
Enable/disable
    Dado que entro no site ${Enable/disable}
    Quando entra verifico se é o site correto
    E habilito para escrever "Capitão América: O Primeiro Vingador"
    E desabilito a opeção