*** Settings ***
Documentation                     verificando tabela

Resource                          ../resources/main.resource

Test Setup                        Start
Test Teardown                     Finish

*** Test Cases ***
Verificando o valor ao informar o numero da linha
    ir para tabela
    Table Row Should Contain       id=actors    3    @prattprattpratt	

Descobre a linha pelo texto chave e valida os demais
    ir para tabela
    selecionar linha e valor       @chadwickboseman    $ 700.000
    selecionar linha e valor       @chadwickboseman    Pantera Negra	