*** Settings ***
Documentation                     arratando e soltando a imagem

Resource                          ../resources/main.resource

Test Setup                        Start
Test Teardown                     Finish


*** Test Cases ***
arrata e soltar 
    mover imagem
    
