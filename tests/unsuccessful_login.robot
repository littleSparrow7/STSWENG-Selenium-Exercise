*** Settings ***
Documentation   A test suite with a single test for unsuccessful login
...
...             This test follows the example using keywords from
...             the SeleniumLibrary
Library         SeleniumLibrary

*** Test Cases ***
Unsuccessful Login
    #open browser
    Open Browser    https://www.saucedemo.com   Chrome
    #set window size
    Maximize Browser Window
    Set Selenium Speed    0
    #check if in login page
    Page Should Contain Element    login-button
    #input username
    Input Text    user-name    locked_out_user
    #input password
    Input Text    password    secret_sauce
    #click login button
    Click Button    login-button
    #should be open in products page
    Element Text Should Be    css:*[data-test="error"]    Epic sadface: Sorry, this user has been locked out.
    #close browser
    [Teardown]