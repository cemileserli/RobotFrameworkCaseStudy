*** Settings ***
Library  SeleniumLibrary
Resource  ./PObj/productpage.robot

*** Variables ***


*** Keywords ***
Add Item To Basket
    productpage.Verify Product in Stock
    productpage.Add Item To Basket

Open Basket
    productpage.Open Basket Page
