*** Settings ***
Library                               SeleniumLibrary

*** Variables ***
${radio}                               https://training-wheels-protocol.herokuapp.com/radios

*** Keywords ***
marcando radio
    Go To                            ${radio}
    [Arguments]                      ${grupe_name}    ${value}
    Select Radio Button              ${grupe_name}    ${value}
    Radio Button Should Be Set To    ${grupe_name}    ${value}