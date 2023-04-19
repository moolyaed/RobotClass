*** Settings ***
Resource    ../Operation/trial.robot
Library    SeleniumLibrary
Library    XML

*** Variables ***
${browser}    chrome
${url}    https://rahulshettyacademy.com/dropdownsPractise/

*** Test Cases ***
tc1
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    EnteringCredentials

    
   


