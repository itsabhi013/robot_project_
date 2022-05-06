*** Settings ***
Library     DateTime


*** Test Cases ***
TC1
    Log To Console    Hello Everyone
    Log To Console    Abhishek

TC2
    ${base}    Set variable  25
    ${height}  Set variable  1
    Log To Console   ${base}
    ${result}   Evaluate    (${base}*${height})/2
    Log To Console    ${result}

TC3
    ${base1}    Set variable  25
    ${base2}    Set variable  25
    ${height}    Set variable  1
    ${result}   Evaluate    (${base1}+${base2})*${height}/2
    Log To Console    ${result}


