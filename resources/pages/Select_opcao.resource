*** Settings ***
Library                               SeleniumLibrary

*** Variables ***
${Select}         https://training-wheels-protocol.herokuapp.com/apps/select2/single.html 
${Select2}           https://training-wheels-protocol.herokuapp.com/apps/select2/multi.html

*** Keywords ***
Então verifico se o titulo da paginna ${titulo}
    
    Title Should Be    ${titulo}
    
E selecino a opeção ${comediante}
    Select From List By Label    xpath=//select[contains(@ng-model,'selected')]    ${comediante}
   
E verifico se foi selecionado o comediante ${num} 
    Element Text Should Be    css=p[class="ng-binding"]    Ator selecionado: ${num}

E escolhos os atores ${ator1},${ator2} e ${ator3}
    
    Select From List By Label    xpath=//select[contains(@ng-model,'multipleSelected')]    ${ator1}    ${ator2}    ${ator3}

E verifico se ${num1},${num2} e ${num3} foram selecinados
    Element Text Should Be    css=p[class='ng-binding']    Atores Selecionados: [${num1},${num2},${num3}]