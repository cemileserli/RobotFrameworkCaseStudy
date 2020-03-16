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
Open App
    homepageApp.Open home page


