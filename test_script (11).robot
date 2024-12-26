*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}      10

*** Test Cases ***
SmartFitAutomation test
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Open Browser    http://dev-sfit.vvdncloud.com/login    ${BROWSER}    options=${options}
Input Text    name=q   //input[@id="username"]    Wait Until Element Is Visible    xpath=//input[@id="username"]    timeout=5
Input Text    //input[@id="username"]    arunkumar.ganesan@vvdntech.in
Input Text    name=q   //input[@id="password"]    Wait Until Element Is Visible    xpath=//input[@id="password"]    timeout=5
Input Text    //input[@id="password"]    Test@123
    Wait Until Element Is Visible    xpath=//button[@class="login-btn    timeout=5
    Click Element    xpath=//button[@class="login-btn
    Close Browser
