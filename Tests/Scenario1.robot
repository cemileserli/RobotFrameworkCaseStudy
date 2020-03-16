*** Settings ***
Resource  ../Resources/loginpageApp.robot
Resource  ../Resources/homepageApp.robot
Resource  ../Resources/productpageApp.robot
Resource  ../Resources/basketpageApp.robot
Resource  ../Resources/utils.robot
Test Setup   utils.start session
Test Teardown     utils.close session

*** Variables ***


*** Test Cases ***
Logging in to App
    homepageApp.Login app
    loginpageApp.Submit Login Form
    homepageApp.Find a suitable Item
    productpageApp.Add Item To Basket
    productpageApp.Open Basket
    basketpageApp.Go to Payment Process