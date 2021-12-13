*** Settings ***
Documentation   A test suite with a single test for sorting
...             This test follows the example using keywords from
...             the SeleniumLibrary
Library         SeleniumLibrary

*** Test Cases ***
Sort Product A to Z
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
    Input Text    password    secret_sauce
    #click login button
    Click Button    login-button
    #select value az
    Select From List By Value    css:*[data-test="product_sort_container"]    az
    #dropdown value should be az
    List Selection Should Be    css:*[data-test="product_sort_container"]    az
    #close browser
    [Teardown]

Sort Product Z to A
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
    Input Text    password    secret_sauce
    #click login button
    Click Button    login-button
    #select value az
    Select From List By Value    css:*[data-test="product_sort_container"]    za
    #dropdown value should be az
    List Selection Should Be    css:*[data-test="product_sort_container"]    za
    #close browser
    [Teardown]

Sort Product Price Low to High
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
    Input Text    password    secret_sauce
    #click login button
    Click Button    login-button
    #select value az
    Select From List By Value    css:*[data-test="product_sort_container"]    lohi
    #dropdown value should be az
    List Selection Should Be    css:*[data-test="product_sort_container"]    lohi
    #close browser
    [Teardown]

Sort Product Price High to Low
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
    Input Text    password    secret_sauce
    #click login button
    Click Button    login-button
    #select value az
    Select From List By Value    css:*[data-test="product_sort_container"]    hilo
    #dropdown value should be az
    List Selection Should Be    css:*[data-test="product_sort_container"]    hilo
    #close browser
    [Teardown]