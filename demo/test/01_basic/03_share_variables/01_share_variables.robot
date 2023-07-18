*** Settings ***
Documentation       Variables Outside Test Scopes


*** Test Cases ***
Create Custom Variables Inside Test Case
    ${color} =    Set Variable    Yellow
    Run Keyword And Expect Error    Variable '\${color}' does not exist.    Cannot Reach Outer Scope Variable
    Set Test Variable    ${color_for_test}    ${color}
    Reach Outer Scope Variable If You Set It As Test Variable
    Set Suite Variable    ${color_for_suite}    ${color}

New Test Case Cannot Reach Previous Variables
    Run Keyword And Expect Error    Variable '\${color}' does not exist.    Variable Should Exist    ${color}

But Can Reach Explicitly Setted Suite Variables
    Variable Should Exist    ${color_for_suite}

You Can Even Use Global Variables
    Set Global Variable    ${color_global}    Yellow


*** Keywords ***
Cannot Reach Outer Scope Variable
    Variable Should Exist    ${color}

Reach Outer Scope Variable If You Set It As Test Variable
    Variable Should Exist    ${color_for_test}
