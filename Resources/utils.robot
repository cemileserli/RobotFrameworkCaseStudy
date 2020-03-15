*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Emptypage Url}  about:blank
${BROWSER}  Chrome

*** Keywords ***
start session
    Open Browser    ${Emptypage Url}    ${BROWSER}
    Maximize Browser Window

close session
    close browser
