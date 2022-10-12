*** Settings ***
Documentation                    formulario de loguin

Resource                         ../resources/main.resource

Test Setup                       Start
Test Teardown                    Finish

*** Test Cases ***
Fazer o loguin correto
    fazer o loguin    stark    jarvis!
    verificar messagem     Olá, Tony Stark. Você acessou a área logada!

senha inválida
    fazer o loguin    stark    1234
    verificar messagem    Senha é invalida!

usuário errado
    fazer o loguin    1234    jarvis!
    verificar messagem     O usuário informado não está cadastrado!

