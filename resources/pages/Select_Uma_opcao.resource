*** Settings ***
Library                               SeleniumLibrary

*** Variables ***
${Select}   https://training-wheels-protocol.herokuapp.com/apps/select2/single.html 
${selec_comed}    xpath=//span[contains(@class,'select2-selection select2-selection--single')]

*** Keywords ***
Dado que entrei no site select2
    Go To    ${Select}

Então verifico se estou na pagina correta
    Title Should Be    Select 2 - Melhores atores de Comédia segundo o Papito
    
E selecino a opeção ${comediante}
    Select From List By Label    xpath=//select[contains(@ng-model,'selected')]    ${comediante}
   
E verifico se foi selecionado o comediante ${num} 
    Element Text Should Be    css=p[class="ng-binding"]    Ator selecionado: ${num}