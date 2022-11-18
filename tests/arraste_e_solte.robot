*** Settings ***
Documentation                     arratando e soltando a imagem

Resource                          ../resources/main.resource

Test Setup                        Start
Test Teardown                     Finish


*** Test Cases ***
arrata e soltar 
    Dado que entro no site ${arrasta}
    E movo a imagem para o outro lado
    
