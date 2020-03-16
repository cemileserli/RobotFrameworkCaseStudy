*** Settings ***
Library  SeleniumLibrary
Library  DebugLibrary


*** Variables ***
${HOME URL}      https://www.hepsiburada.com/
${selector_homepage_title}      Türkiye'nin En Büyük Online Alışveriş Sitesi Hepsiburada.com
${selector_LoggedinPage_title}      Üye Giriş Sayfası – Hepsiburada.com
${selector_EmailField_Text}         //input[@id='email']
${selector_PasswordField_Text}      //input[@id='password']
${selector_recommended_element}  //*[@id="recommendation_9"]/div/div/div[2]/div/div/div/div/div[1]/div/div/a
${username}      Input your email
${password}      Input your password
${selector_LoginSubmit_button}  Giriş



*** Keywords ***
Verify Login page
    Title Should Be    ${selector_LoggedinPage_title}

Fill Form and Login
    Wait Until Element Is Visible  ${selector_EmailField_Text}
    Input Text  ${selector_EmailField_Text}  ${username}
    Wait Until Element Is Visible  ${selector_EmailField_Text}
    Input Text  ${selector_PasswordField_Text}  ${password}
    Click Button  ${selector_LoginSubmit_button}
