*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Variables ***
${browser}    chrome
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login


*** Test Cases ***
tc1
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Get Title
    #Input Text    //input[@class='oxd-input oxd-input--active'][0]    Admin
    Input Password    //input[@name='password']    admin123
    Click Button    //button[text()=' Login ']
    #Click Element    //p[text()='Forgot your password? '] 

