*** Settings ***
Library  SeleniumLibrary
Library  DebugLibrary

*** Variables ***
${selector_addToCart_Button}  //button[@id='addToCart']
#${text_ItemAdded}  Ürün başarılı bir şekilde sepete eklenmiştir.
${basket_count}   //*[@id="cartItemCount"]/label
#${selector_shoppingCart}  //a[@id="shoppingCart"]
${myBasketTitle}  Sepetim



*** Keywords ***
Verify Product in Stock

    Wait Until Element Is Visible  ${selector_addToCart_Button}
    Element Should Be Enabled  ${selector_addToCart_Button}

Add Item To Basket
    ${basket_countBefore}=  Get Text  ${basket_count}
    Click Element  ${selector_addToCart_Button}
    log to console  ${basket_countBefore}
    Sleep  2
    ${basket_countAfter}=  Get Text  ${basket_count}
    log to console  ${basket_countAfter}
    Should not be equal  ${basket_countAfter}  ${basket_countBefore}
    Sleep  1
    Press Keys  None  ESCAPE


Open Basket Page
    Click Element  ${basket_count}
    Title Should be  ${myBasketTitle}




