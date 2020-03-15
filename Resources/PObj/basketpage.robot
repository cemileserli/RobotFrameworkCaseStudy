*** Settings ***
Library  SeleniumLibrary
Library  DebugLibrary



*** Variables ***
${basket_Title}  Sepetim
${shipment_Title}  Teslimat Bilgileri
${payment_Title}  Ödeme Bilgileri
${selector_FinishShopping}  //*[@id="short-summary"]/div[1]/div[2]/button
${selector_CardInput_Area}  //*[@id="payment-container"]/div[3]/div/div/div[1]/a/i[2]
${selector_CardDetail_Area}  //*[@id="card-no"]


*** Keywords ***
Click Finish Shopping
    Sleep  2
    Title Should be  ${basket_Title}
    Wait Until Element Is Visible   ${selector_FinishShopping}


Shipment Page Continue
    Sleep  2
    Click Element  ${selector_FinishShopping}
    Wait Until Element Is Visible   ${selector_FinishShopping}
    Sleep  2
    Click Element  ${selector_FinishShopping}
    Sleep  2




Card Detail Page Continue
    Title Should be  ${payment_Title}
    Wait Until Element Is Visible   ${selector_CardInput_Area}
    Click Element  ${selector_CardInput_Area}
    Sleep  2
    Wait Until Element Is Visible  ${selector_CardDetail_Area}