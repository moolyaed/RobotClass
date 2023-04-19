*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

login to facebook
    Input Text    //input[@id='email']    srijag2@gmail.com
    Input Password    //input[@id='pass']    Hanishreddy
    Click Button    //button[text()='Log in']
    Sleep    5
    Click Element    //span[text()='Find friends']
