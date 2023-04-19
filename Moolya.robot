*** Settings ***
Resource    ../Operation/tc1.robot
Library    SeleniumLibrary
Library    XML
*** Variables ***
${browser}    chrome
${url}    https://www.google.com/
${url1}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
tc1
    Open Browser    ${url1}    ${browser}
    Maximize Browser Window
    Title Should Be    OrangeHRM
    # Sleep    3
    # Set Selenium Speed    3seconds
    logintest
    
