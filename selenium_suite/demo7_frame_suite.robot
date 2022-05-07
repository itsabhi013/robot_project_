*** Settings ***
Library  OperatingSystem
Library    SeleniumLibrary
*** Test Cases ***


TC1
    Append To Environment Variable    Path      E:\\Robot_Driver
    Open Browser    url=https://netbanking.hdfcbank.com/netbanking/     browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Select Frame    xpath=//frame[@name='login_page']
    Input Text    name=fldLoginUserId    Abhishek
    Click Element    link=CONTINUE
    Unselect Frame