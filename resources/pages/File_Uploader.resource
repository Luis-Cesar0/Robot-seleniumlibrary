*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Uplod}    https://training-wheels-protocol.herokuapp.com/upload
${caminho}    C:/Users/luisc/Downloads

*** Keywords ***

Dado que entrei na pagina upload
    Go To    ${Uplod}
    Page Should Contain Element    xpath=//h3[contains(.,'File Uploader')]

Qunado estiver na pagina upload selecione o arquivo "${arquivo}"
    Choose File    css=input[id="file-upload"]    ${caminho}/${arquivo}

E faça o upload do arquivo
    Click Button    css=input[id=file-submit]

E verifico se o arquivo foi selecionado corretamente
    Wait Until Element Is Visible   css=img[id="new-image"]    8
    