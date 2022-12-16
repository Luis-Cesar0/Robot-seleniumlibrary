*** Settings ***
Documentation    Fazendo Uploade de um arquivo

Resource         ../resources/main.resource

Test Setup       Start
Test Teardown    Finish

*** Test Cases ***

Fazendo o Upload de uma imagem
    Dado que entrei na pagina upload
    Qunado estiver na pagina upload selecione o arquivo "cap.png"
    E faça o upload do arquivo
    E verifico se o arquivo foi selecionado corretamente 
