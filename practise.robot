*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
SearchForAnItem
    Click Element    //button[@class='_2KpZ6l _2doB4z']
    Sleep    2
    Click Button    //input[@title='Search for products, brands and more']
    Input Text    //input[@title='Search for products, brands and more']    Hearrings
    Click Element    locator
    
    # Press Key    //input[@class='gLFyf']    ENTER
    #Press Key    //input[@class='gLFyf']    key