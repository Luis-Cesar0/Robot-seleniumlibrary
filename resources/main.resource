*** Settings ***
Documentation              Arquivo principal

Library                    SeleniumLibrary

Resource                   ../resources/pages/chackboxes.resource
Resource                   ../resources/pages/radio.resource
Resource                   ../resources/pages/tabela.resource
Resource                   ../resources/pages/loguin_form.resource
Resource                   ../resources/pages/arraste_e_solte.resource
Resource                   ../resources/pages/Dropdown_List.resource
Resource                   ../resources/pages/Select_Uma_opcao.resource

*** Keywords ***
Start
    Open Browser            https://training-wheels-protocol.herokuapp.com    chrome
    Maximize Browser Window
    Title Should Be        Training Wheels Protocol

Finish
    Capture Page Screenshot
    Close Browser