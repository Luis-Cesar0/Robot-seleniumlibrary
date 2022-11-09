*** Settings ***
Library                            SeleniumLibrary

*** Variables ***
${arrasta}                        https://training-wheels-protocol.herokuapp.com/drag_and_drop

*** Keywords ***
mover imagem
    Go To    ${arrasta} 
    Drag And Drop     xpath=//img[@alt="Homem Aranha"]    xpath=//div[@class='col-md-6 team-stark']//div
    
    
    