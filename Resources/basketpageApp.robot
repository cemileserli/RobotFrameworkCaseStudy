*** Settings ***
Library  SeleniumLibrary
Resource  ./PObj/basketpage.robot


*** Variables ***



*** Keywords ***
Go to Payment Process
    basketpage.Click Finish Shopping
    basketpage.Shipment Page Continue
    basketpage.Card Detail Page Continue
