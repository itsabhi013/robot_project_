*** Settings ***
Library  OperatingSystem
Library    SeleniumLibrary
*** Test Cases ***


TC1
    Append To Environment Variable    Path      E:\\Robot_Driver
    Open Browser    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm     browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s

    Click Element    xpath=//img[@alt='Go']
    ${alert_text}   Handle Alert    Action=ACCEPT

    Log To Console     ${alert_text}
    Log     ${alert_text}
