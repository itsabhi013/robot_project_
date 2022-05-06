*** Settings ***
Library  OperatingSystem
Library    SeleniumLibrary
*** Test Cases ***


TC1
    Append To Environment Variable    Path      E:\\Robot_Driver
    Open Browser    url=https://www.facebook.com/     browser=chrome
    Maximize Browser Window
    Sleep    30s
    Click Element    link=Create New Account
    Input Text    name=firstname    Abhishek
    Input Text    name=lastname    Kashyap
    Input Text    name=reg_email__    abhi181@gmail.com
    Input Text    name=reg_email_confirmation__    abhi181@gmail.com
    Input Text    name=reg_passwd__    Abhi18165
    Select Radio Button    sex    2
    Select From List By Label    name=birthday_day  1
    Select From List By Label    name=birthday_month  Jan
    Select From List By Label    name=birthday_year  2000
    Click Element    name=websubmit





