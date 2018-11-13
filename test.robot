*** Settings ***
Documentation     Open Google and Wait just for testing purpose.

Default Tags    google    bulldog
Resource    ./resource_google.robot
Suite Setup    Run Keyword  Open Browser    http://www.google.com  browser=chrome
Test Setup    Run Keyword  Log To Console  'Test Setup Message'
Test Teardown   Run Keyword  Log To Console  'Test Teardown Message'
Suite Teardown    Close Browser

*** Test Cases ***
Open Google Test 1
    Open Google Images
    Search For French Bulldogs
    Capture Page Screenshot
    Sleep    3

Open Google Test 2
    Define Own Keyword In File
    Search For French Toast
    Sleep    3

Open Google Test 3
    Open Google Images
    Search For French Fries
    Fail  msg=Ooops something went wrong!
    Sleep    3

*** Keywords ***
Define Own Keyword In File
    Run Keyword  Open Google Images
