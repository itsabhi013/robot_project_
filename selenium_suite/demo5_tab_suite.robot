* Settings *
Library     SeleniumLibrary
Library     OperatingSystem
Library    XML

* Test Cases *
TC1
    Append To Environment Variable    Path       E:\\Robot_Driver
    Open Browser    url=https://www.medibuddy.in/  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    id=wzrk-cancel
    Click Element    link=For Employer
    Switch Window   MediBuddy LaunchPad
    Input Text    id=getInTouchName    Abhishek
    Input Text    id=getInTouchEmail    aabbbc123@gmail.com
    Input Text    id=getInTouchMobile    80000
    Input Text    id=getInTouchDesignation    Manager
    Input Text    id=getInTouchEmpCount    25
    Element Text Should Be    locator=xpath=//div[contains(@class,'text-red-600 ml-2')]   expected=Mobile Number should be 10 digits
    Click Element    xpath=//button[(@type='submit')]
    Close Window
    Close Browser