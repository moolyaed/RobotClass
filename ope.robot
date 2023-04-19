*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
search in google
    Input Text    //input[@class='gLFyf']    earrings
    Press Keys    //input[@class='gLFyf']    ENTER
    Sleep    2
    