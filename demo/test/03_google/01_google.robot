*** Settings ***
Documentation       Open Google and Wait just for testing purpose.

Resource            ${EXECDIR}/demo/resource/general.resource

Test Setup          Test Execution Setup
Test Teardown       Close Browser

Force Tags          google


*** Test Cases ***
Open Google Test 1
    [Tags]    tag-1    tag-2
    Open Google Images
    Search For French Bulldogs
    Capture Page Screenshot
    Sleep    3

Open Google Test 2
    Open Google Images
    Search For French Toast
    Capture Page Screenshot
    Sleep    3

Open Google Test 3
    [Tags]    tag-3
    Open Google Images
    Search For French Fries
    Capture Page Screenshot
    Run Keyword And Expect Error    Ooops something went wrong!    Fail    msg=Ooops something went wrong!
    Sleep    3
