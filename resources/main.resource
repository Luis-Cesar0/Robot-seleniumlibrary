*** Settings ***
Documentation              Arquivo principal

Library                    SeleniumLibrary

Resource                   ../resources/pages/chackboxes.resource
Resource                   ../resources/pages/radio.resource
Resource                   ../resources/pages/tabela.resource
Resource                   ../resources/pages/loguin_form.resource

*** Keywords ***
Start
    Open Browser            https://training-wheels-protocol.herokuapp.com    chrome
     Title Should Be        Training Wheels Protocol

Finish
    Capture Page Screenshot
    Close Browser