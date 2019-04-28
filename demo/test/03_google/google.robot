*** Settings ***
Documentation     Open Google and Wait just for testing purpose.

Force Tags    google
Resource    ${EXECDIR}/demo/resource/general.robot
Suite Setup    Test Execution Setup
Suite Teardown    Close Browser

*** Test Cases ***
Open Google Test 1
    [Tags]    TAG-1    TAG-2
    Open Google Images
    Search For French Bulldogs
    Capture Page Screenshot
    Sleep    3

Open Google Test 2
    Define Own Keyword In File
    Search For French Toast
    Capture Page Screenshot
    Sleep    3

Open Google Test 3
    [Tags]   TAG-3
    Open Google Images
    Search For French Fries
    Capture Page Screenshot
    Run Keyword And Expect Error  Ooops something went wrong!  Fail  msg=Ooops something went wrong!
    Sleep    3

*** Keywords ***
Define Own Keyword In File
    Open Google Images
