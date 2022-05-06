*** Settings ***
Library  OperatingSystem
Library    SeleniumLibrary
*** Test Cases ***


TC1
    Append To Environment Variable    Path      E:\\Robot_Driver
    Open Browser    url=https://www.salesforce.com/in/form/signup/freetrial-sales/?d=jumbo1-btn-ft     browser=chrome
    Maximize Browser Window
    Input Text    name=UserFirstName    Abhishek
    Input Text    name=UserLastName    Kashyap
    Input Text    name=UserEmail    abhi1816516@gmail.com
    Select From List By Label    name=UserTitle     IT Manager
    Input Text    name=CompanyName    LTTS
    Select From List By Label    name=CompanyEmployees  101 - 500 employees

    Click Element    Xpath=//div[@class='checkbox-ui']
    Click Element    name=start my free trial
    Element Text Should Be    xpath=//span[contain(@,'UserPhone')]    Enter a valid phone number





