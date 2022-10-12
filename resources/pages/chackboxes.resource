*** Settings ***
Library                            SeleniumLibrary

*** Variables ***
${checkbox}                        https://training-wheels-protocol.herokuapp.com/checkboxes

*** Keywords ***
Marque a Chackbox
    Go To                          ${checkbox}
    [Arguments]                    ${chackbox}
    Select Checkbox                ${chackbox}
    Checkbox Should Be Selected    ${chackbox} 