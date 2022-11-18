*** Settings ***
Library                            SeleniumLibrary

*** Variables ***
${arrasta}                        https://training-wheels-protocol.herokuapp.com/drag_and_drop

*** Keywords ***
E movo a imagem para o outro lado
    Drag And Drop     xpath=//img[@alt="Homem Aranha"]    xpath=//div[@class='col-md-6 team-stark']//div
    
    
    