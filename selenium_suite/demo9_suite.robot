*** Settings ***
Library  OperatingSystem
Library    SeleniumLibrary
*** Test Cases ***


TC1
    Append To Environment Variable    Path      E:\\Robot_Driver
    Open Browser    url=http://demo.openemr.io/b/openemr/interface/login/login.php?site=default   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Input Text    id=authUser    admin
    Input Text    name=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    id=login-button
    Click Element    xpath=//div[text()='Messages']
    Select Frame    xpath=//iframe[contains(@src,'messages.php')]
    Click Element    partial link=Add New
    Select From List By Label    id=form_note_type      Pharmacy
    Select From List By Label    id=form_message_status     New
    Select From List By Index    id=users       1
    Input Text    id=note    Hello
    Click Element    id=newnote
    Element Should Contain    id=error_reply_to      Please choose a patient
    Unselect Frame
