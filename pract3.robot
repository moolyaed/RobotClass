*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

login to faceb
    Input Text    //input[@class='oxd-input oxd-input--active'][0]    Admin
    Input Password    //input[@type='password']    admin123
    Click Button    //button[text()=' Login ']