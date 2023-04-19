*** Settings ***
Resource    ..//Operation/practise.robot
Library    SeleniumLibrary
Library    XML
*** Variables ***
${browser}    chrome
${url}    https://www.flipkart.com/

*** Test Cases ***
tc1
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    SearchForAnItem
    