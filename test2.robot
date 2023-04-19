*** Settings ***
Library    SeleniumLibrary
Resource    ../Operation/pract2.robot
Library    XML

*** Variables ***
${browser}    chrome
${url}    https://www.facebook.com/

*** Test Cases ***
tc1
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    login to facebook
    