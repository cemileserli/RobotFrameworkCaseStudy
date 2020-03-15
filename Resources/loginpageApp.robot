*** Settings ***
Library  SeleniumLibrary
Resource  ./PObj/loginpage.robot


*** Variables ***



*** Keywords ***
Submit Login Form
    loginpage.Verify Login page
    loginpage.Fill Form and Login