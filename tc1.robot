*** Settings ***
Library    SeleniumLibrary
*** Keywords ***    
logintest
    Sleep    3
    Input Text    //input[@name='username']    Admin
    # ${password}    Set Variable    //input[@name='password']
    # Element Should Be Visible    ${username}
    # Element Should Be Enabled    ${username}
    
    Input Password    //input[@name='password']    admin123
    # Clear Element Text    ${username}
    Click Button    //button[@type='submit']


