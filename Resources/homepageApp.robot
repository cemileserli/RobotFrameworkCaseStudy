*** Settings ***
Library  SeleniumLibrary
Resource  ./PObj/homepage.robot

*** Variables ***



*** Keywords ***
Login app
    homepage.go to homepage
    homepage.Redirect to Login page

Find a suitable Item
    homepage.Verify page has Recommended Item
    homepage.Click on Recommended Item

