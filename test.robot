*** Settings ***
Documentation     Open Google and Wait just for testing purpose.

Force Tags    google    bulldog
Resource    ./google.resource
Suite Setup    Run Keyword  Open Browser    http://www.google.com  browser=chrome
Test Setup    Run Keyword  Log To Console  ${\n} Test Setup Message
Test Teardown   Run Keyword  Log To Console  ${\n} Test Teardown Message ${\n}
Suite Teardown    Close Browser

*** Test Cases ***
FakerLibrary Words Generation
    ${words}=    FakerLibrary.Words
    Log    words: ${words}
    ${words}=    FakerLibrary.Words    nb=${10}
    Log    words: ${words}

Open Google Test 1
    [Tags]    CALC-1    CALC-2
    Open Google Images
    Search For French Bulldogs
    Capture Page Screenshot
    Sleep    3

Open Google Test 2
    Define Own Keyword In File
    Search For French Toast
    Sleep    3

Open Google Test 3
    [Tags]   CALC-3
    Open Google Images
    Search For French Fries
    Fail  msg=Ooops something went wrong!
    Sleep    3

Use Custom Python Code
    ${upper_string} =    make upper    french bulldog
    Log  ${upper_string}

New For Loop Concept Since release 3.1
    [Tags]    for
    ${list} =    Create List  cat    dog    cow
    FOR    ${animal}    IN    @{list}
        Log    ${animal}
        No Operation
    END

Get enviroment variable with pipenv is easy
    [Tags]    pipenv
    ${variable} =    Get Environment Variable    FIZZ
    Log    ${variable}

Reach Inner Object since release 3.1
    [Tags]    dictionary
    ${list_mammal} =    Create List    horse    cat    dog
    ${list_birds} =    Create List    Hawk    Eagle
    ${dictionary} =    Create Dictionary  mammal=${list_mammal}    bird=${list_birds}
    Log    ${dictionary}[bird]
    Log    ${dictionary}[mammal][1]

*** Keywords ***
Define Own Keyword In File
    Run Keyword  Open Google Images
