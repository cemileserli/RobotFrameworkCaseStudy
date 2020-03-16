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

Open home page
    homepage.go to homepage
    homepage.Search for a product
    homepage.Filter for Jbl Brand
    homepage.Filter for Price Range
    homepage.Filter for Color
