*** Settings ***
Library    OperatingSystem

*** Test Cases ***

TC1
    Create File    path=D:\\Mine\\hello.txt
    ${files}    List Files In Directory    path=D:\\Mine\\Company\\LT5
    Log To Console    ${files}