*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
*** Test Cases ***
TC1
    Append To Environment Variable    Path      E:\\Robot_Driver
    Open Browser    url=https://www.facebook.com/     browser=chrome
    Input Text    id=email    abhi181@gmail.com
    Input Password    id=pass    welcome123
    Click Element    name=login