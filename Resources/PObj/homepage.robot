*** Settings ***
Library  SeleniumLibrary
Library  DebugLibrary

*** Variables ***
${HOME URL}      https://www.hepsiburada.com/
${selector_homepage_title}      Türkiye'nin En Büyük Online Alışveriş Sitesi Hepsiburada.com
${selector_girisyap_button}    //div[@id='myAccount']
${selector_login_input}      //a[@id='login']
${selector_recommendedItem_element}  //*[@id="dealoftheday_5"]/div/div/div[2]/div/div/div/div/div[2]/div/div/a
${search_Plaintext}  bluetooth kulaklık
${selector_search_field}  //input[@id='productSearch']
${selector_search_button}  //*[@id="ProductSearch"]/form/div[1]/div
${selector_BrandSearch}  //li[@title='JBL']
${selector_PriceRange2}  //input[@id="attr-fiyat-750-1000"]
${selector_PriceRange}  //li[@alt="750 - 1000 TL"]
${selector_ColorOption}  //li[@alt="Siyah"]
#${selector_ForProduct}     //div[@class="heartFrame"][0]


*** Keywords ***
go to homepage
    go to  ${HOME URL}
    Title Should Be    ${selector_homepage_title}

Redirect to Login page
    Sleep  2
    Wait Until Element Is Visible  ${selector_girisyap_button}
    Click Element  ${selector_girisyap_button}
    Sleep  2
    Wait Until Element Is Visible  ${selector_login_input}
    Click Element  ${selector_login_input}

Verify page has Recommended Item
    Wait Until Element Is Visible  ${selector_recommendedItem_element}


Click on Recommended Item
    #log to console  ${Recommended_Item_Name}
    ${recommended_uref}=  Get Element Attribute  ${selector_recommendedItem_element}  href
    Click Element  ${selector_recommendedItem_element}
    Wait Until Location Contains  ${recommended_uref}

Search for a product
    Wait Until Element Is Visible  ${selector_search_field}
    Input Text  ${selector_search_field}  ${search_Plaintext}
    Submit Form

Filter for Jbl Brand
    Wait until element is visible  ${selector_BrandSearch}
    Sleep  3
    Click Element  ${selector_BrandSearch}
    Sleep  3


Filter for Price Range
    Wait until element is visible  ${selector_PriceRange}
    Sleep  3
    Click Element  ${selector_PriceRange}
    Sleep  5

Filter for Color
    Wait until element is visible  ${selector_ColorOption}
    Sleep  3
    Click Element  ${selector_ColorOption}
    debug