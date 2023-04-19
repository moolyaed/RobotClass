*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    Collections
Library    DateTime
 
*** Variables ***
${browser}    chrome
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${title_frame1}    Time at Work
${title_frame2}    My Actions
${title_frame3}    Quick Launch
${title_frame4}    Buzz Latest Posts
${title_frame5}    Employees on Leave Today
${title_frame6}    Employee Distribution by Sub Unit
${title_frame7}    Employee Distribution by Location
${time}    Get Current Date

*** Test Cases ***
tc1
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    3
    Input Text    //input[@name='username']    Admin
    Sleep    2
    Input Password    //input[@name='password']    admin123
    Sleep    2
    Click Button    //button[text()=' Login ']
    Sleep    2

tc2
    Click Element    //span[text()='Admin']
    Sleep    2
    Click Button     //button[text()=' Add '] 
    Sleep    3
    Click Element    //div[@class='oxd-select-text--after']
    Sleep    2
    Press Keys    //div[@class='oxd-select-text--after']    DOWN
    Press Keys    //div[@class='oxd-select-text--after']    DOWN

    #Press Keys    //div[@class='oxd-select-text--after']    TAB
    Click Element    //div[@class='oxd-select-text--after']
    Sleep    2
    Click Element    //div[@class='oxd-select-text--after']
    Press Keys    //div[@class='oxd-select-text--after']    DOWN
    #Press Keys    //div[@class='oxd-select-text--after']    DOWN
    Press Keys    //div[@class='oxd-select-text--after']    ENTER


    Press Keys    //div[@class='oxd-select-text--after']    TAB
    Input Text    //input[@placeholder='Type for hints...']    m
    Sleep    2
    Press Keys    //input[@placeholder='Type for hints...']    DOWN
    Press Keys    //input[@placeholder='Type for hints...']    DOWN
    Press Keys    //input[@placeholder='Type for hints...']    ENTER

    Press Keys    //input[@placeholder='Type for hints...']    TAB
    Sleep    2
    
//div[@id='Year']/div/ul/li
    
    Press Keys    (//div[@class='oxd-select-text-input'])[2]    DOWN
    Press Keys    (//div[@class='oxd-select-text-input'])[2]    DOWN
    
    Press Keys    (//div[@class='oxd-select-text-input'])[2]    ENTER
    Sleep    1
    Click Element    (//div[@class='oxd-select-text-input'])[2]
    Press Keys    (//div[@class='oxd-select-text-input'])[2]    DOWN
    #Press Keys    (//div[@class='oxd-select-text-input'])[2]    TAB

    Input Text    (//input[@class='oxd-input oxd-input--active'])[2]    SrijaG
    Sleep    2
    Input Password    (//input[@type='password'])[1]    Hanishreddy@2
    Sleep    2
    Input Password    (//input[@type='password'])[2]    Hanishreddy@2
    Sleep    2
    Click Button    //button[text()=' Save ']



    Sleep    2
    #Press Keys    //div[@class='oxd-select-text--after']    ENTER

    #Sleep    2

tc3
    Click Element    //span[text()='Admin']
    Sleep    2
    Input Text    (//input[@class='oxd-input oxd-input--active'])[2]    SrijaH
    Click Element    (//div[@class='oxd-select-text-input'])[1]
    Press Keys    (//div[@class='oxd-select-text-input'])[1]    DOWN
    Press Keys    (//div[@class='oxd-select-text-input'])[1]    DOWN
    Press Keys    (//div[@class='oxd-select-text-input'])[1]    ENTER
    Click Element    (//div[@class='oxd-select-text-input'])[1]
    Press Keys    (//div[@class='oxd-select-text-input'])[1]    DOWN
    Press Keys    (//div[@class='oxd-select-text-input'])[1]    DOWN
    Press Keys    (//div[@class='oxd-select-text-input'])[1]    ENTER
    Input Text    (//input[@placeholder='Type for hints...'])    m
    Sleep    3
    Press Keys    (//input[@placeholder='Type for hints...'])    DOWN
    Press Keys    (//input[@placeholder='Type for hints...'])    DOWN
    Press Keys    (//input[@placeholder='Type for hints...'])    ENTER
    Click Element    (//div[@class='oxd-select-text-input'])[2]
    Press Keys    (//div[@class='oxd-select-text-input'])[2]    DOWN
    Press Keys    (//div[@class='oxd-select-text-input'])[2]    DOWN
    Press Keys    (//div[@class='oxd-select-text-input'])[2]    ENTER
    Click Button     //button[text()=' Search '] 
    Sleep    2


tc4
    Click Element    //span[text()='Dashboard']
    Sleep    2
    #Element Text Should Be    (//div[@class='oxd-sheet oxd-sheet--rounded oxd-sheet--white orangehrm-dashboard-widget'])[1]    ${title_frame1}
    Element Should Contain    (//div[@class='oxd-sheet oxd-sheet--rounded oxd-sheet--white orangehrm-dashboard-widget'])[1]    ${title_frame1}
    Element Should Contain    (//div[@class='oxd-sheet oxd-sheet--rounded oxd-sheet--white orangehrm-dashboard-widget'])[2]    ${title_frame2}
    Element Should Contain    (//div[@class='oxd-sheet oxd-sheet--rounded oxd-sheet--white orangehrm-dashboard-widget'])[3]    ${title_frame3}
    Element Should Contain    (//div[@class='oxd-sheet oxd-sheet--rounded oxd-sheet--white orangehrm-dashboard-widget'])[4]    ${title_frame4}
    #Element Should Contain    (//div[@class='oxd-sheet oxd-sheet--rounded oxd-sheet--white orangehrm-dashboard-widget'])[5]    ${title_frame5}
    Element Should Contain    (//div[@class='oxd-sheet oxd-sheet--rounded oxd-sheet--white orangehrm-dashboard-widget'])[5]    ${title_frame6}
    Element Should Contain    (//div[@class='oxd-sheet oxd-sheet--rounded oxd-sheet--white orangehrm-dashboard-widget'])[6]    ${title_frame7}
    
    Click Element    (//i[@class='oxd-icon bi-stopwatch'])
    Sleep    2
    Element Should Contain    //div[@class='orangehrm-card-container']    Punch Out || Punch In
    Click Element    (//input[@class='oxd-input oxd-input--active'])[3]
    Sleep    1
    Click Element    //i[@class='oxd-icon bi-chevron-up oxd-icon-button__icon oxd-time-hour-input-up']
    Input Text    //textarea[@class='oxd-textarea oxd-textarea--active oxd-textarea--resize-vertical']    Logging remote work
    Click Button    //button[@class='oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space']
    Sleep    3
tc5
    Click Element    //a[@class='oxd-main-menu-item active']
    Sleep    2
    #Execute Javascript    Window.scrollTo(0,400)
    scroll element into view         (//div[@class='oxd-sheet oxd-sheet--rounded oxd-sheet--white orangehrm-dashboard-widget'])[6]
    Mouse Over    (//div[@class='oxd-sheet oxd-sheet--rounded oxd-sheet--white orangehrm-dashboard-widget'])[6]
    ${locator}=      Set Variable    (//div[@class='oxd-sheet oxd-sheet--rounded oxd-sheet--white orangehrm-dashboard-widget'])[6]    
    #${the tooltip}=  Get Element Attribute    ${locator}       
    #Should Contain   ${the tooltip}     (Optional)   

tc6
    Click Element    //a[@class='oxd-main-menu-item active']
    Sleep    2
    Click Element    (//i[@class='oxd-icon bi-stopwatch'])
    Sleep    2
    Element Should Contain    //div[@class='orangehrm-card-container']    Punch In
    Click Element    (//input[@class='oxd-input oxd-input--active'])[3]
    Sleep    1
    Click Element    //i[@class='oxd-icon bi-chevron-up oxd-icon-button__icon oxd-time-hour-input-up']
    Input Text    //textarea[@class='oxd-textarea oxd-textarea--active oxd-textarea--resize-vertical']    Logging remote work
    Click Button    //button[@class='oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space']
    Sleep    3

tc7

    Click Element    //span[@class='oxd-userdropdown-tab']
    Sleep    2
    Click Element    //a[text()='Logout']
    Sleep    3
    ${Login_url}    Get Location
    Run Keyword If    ${url} == ${Login_url}    Log To Console    Yes
    