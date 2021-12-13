*** Settings ***
Documentation   A test suite with a single test for problem user login
...
...             This test follows the example using keywords from
...             the SeleniumLibrary
Library         SeleniumLibrary

*** Test Cases ***
Successful Login
    #open browser
    Open Browser    https://www.saucedemo.com   Chrome
    #set window size
    Maximize Browser Window
    Set Selenium Speed    0
    #check if in login page
    Page Should Contain Element    login-button
    #input username
    Input Text    user-name    problem_user
    #input password
    Input Text    password    secret_sauce
    #click login button
    Click Button    login-button
    #should be open in products page
    Element Text Should Be    class:title    PRODUCTS
    #first element text should be Sauce Labs Backpack
    Element Text Should Be    css:#item_4_title_link > .inventory_item_name    Sauce Labs Backpack
    #first element pic should be a backpack
    Element Attribute Value Should Be    css:#item_4_img_link > .inventory_item_img    src    https://www.saucedemo.com/static/media/sl-404.168b1cce.jpg
    #close browser
    [Teardown]