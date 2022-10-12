*** Settings ***
Documentation                     testando as checkboxes

Resource                          ../resources/main.resource

Test Setup                        Start
Test Teardown                     Finish


*** Test Cases ***
marcando checkboxes com Id
    Marque a Chackbox              id=thor
    Sleep                          1
Marcando checkboxes com CSS Selector
    Marque a Chackbox               css:input[value=cap]
    Sleep                          1
Marcando opeção com o Xpath
    Marque a Chackbox               //*[@id='checkboxes']/input[7]
    Sleep                          1


    
    