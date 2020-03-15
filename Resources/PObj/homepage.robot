*** Settings ***
Library  SeleniumLibrary
Library  DebugLibrary

*** Variables ***
${HOME URL}      https://www.hepsiburada.com/


${selector_homepage_title}      Türkiye'nin En Büyük Online Alışveriş Sitesi Hepsiburada.com
${selector_girisyap_button}    //div[@id='myAccount']
${selector_login_input}      //a[@id='login']
${selector_recommendedItem_element}  //*[@id="dealoftheday_5"]/div/div/div[2]/div/div/div/div/div[2]/div/div/a


*** Keywords ***
go to homepage
    go to  ${HOME URL}
    Title Should Be    ${selector_homepage_title}

Redirect to Login page
    Wait Until Element Is Visible  ${selector_girisyap_button}
    Click Element  ${selector_girisyap_button}
    Wait Until Element Is Visible  ${selector_login_input}
    Click Element  ${selector_login_input}

Verify page has Recommended Item
    Wait Until Element Is Visible  ${selector_recommendedItem_element}



Click on Recommended Item
    #log to console  ${Recommended_Item_Name}

    ${recommended_uref}=  Get Element Attribute  ${selector_recommendedItem_element}  href
    Click Element  ${selector_recommendedItem_element}
    Wait Until Location Contains  ${recommended_uref}




