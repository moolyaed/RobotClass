*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
EnteringCredentials
    Click Element    //input[@id='ctl00_mainContent_ddl_originStation1_CTXT']
    Click Link    //a[@text='Bengaluru (BLR)']
    Sleep    3
    Click Link    //body[1]/form[1]/div[4]/div[2]/div[1]/div[5]/div[2]/div[2]/div[2]/div[3]/div[1]/div[3]/div[1]/div[2]/div[2]/div[1]/table[1]/tbody[1]/tr[2]/td[2]/div[3]/div[1]/div[1]/ul[1]/li[8]/a[1]
    
    Click Element    //input[@name='ctl00$mainContent$view_date1']
    Sleep    3
    Click Link    //body[1]/div[1]/div[1]/table[1]/tbody[1]/tr[3]/td[7]/a[1]