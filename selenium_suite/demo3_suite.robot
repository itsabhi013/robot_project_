*** Settings ***
Library  OperatingSystem
Library    SeleniumLibrary
*** Test Cases ***


TC1
    Append To Environment Variable    Path      E:\\Robot_Driver
    Open Browser    url=https://www.goto.com/meeting/trial     browser=chrome
    Maximize Browser Window
    Click Element    id=truste-consent-button
    Input Text    name=FirstName    Abhishek
    Input Text    name=LastName    Kashyap
    Input Text    id=login__email    abhi1816516@gmail.com
    Input Text    name=PhoneNumber       5869859965
    Input Text    id=login__password    Abhi261305@
    Select From List By Label    name=CompanySize  1 - 9
    Click Element    Xpath=//button[text()='Start My Trial']
    Close Browser




