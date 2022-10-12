*** Settings ***
Documentation                    Botão de radio

Resource                         ../resources/main.resource

Test Setup                       Start
Test Teardown                    Finish

*** Test Cases ***
selecionado por Id
    marcando radio               movies   cap

Selecionado por value
    marcando radio               movies   the-avengers
    