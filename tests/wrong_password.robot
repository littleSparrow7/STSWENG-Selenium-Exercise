*** Settings ***
Documentation   A test suite with a single test for invalid login
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
    Input Text    user-name    standard_user
    #input password
    Input Text    password    secretsauce
    #click login button
    Click Button    login-button
    #should be open in products page
    Element Text Should Be    css:*[data-test="error"]    Epic sadface: Username and password do not match any user in this service
    #close browser
    [Teardown]