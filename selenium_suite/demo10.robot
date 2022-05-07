*** Settings ***
Library  OperatingSystem
Library    SeleniumLibrary
*** Test Cases ***


TC1
    Append To Environment Variable    Path      E:\\Robot_Driver
    Open Browser    url=https://smallpdf.com/pdf-to-word   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Choose File    xpath=//input[@type='file'    file_path
    Log To Console    ${current_title}
    ${url}      Get Location
    Log To Console    ${url}
