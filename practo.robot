*** Settings ***
Library    SeleniumLibrary
Library    XML
Resource    ../Operation/ope.robot

*** Variables ***
${url}    https://www.google.com/
${browser}    chrome

*** Test Cases ***
Search
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    search in google
    