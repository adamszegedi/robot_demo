*** Settings ***
Documentation     Basic Usage Examples

Force Tags    basic
Resource    ${EXECDIR}/demo/resource/general.robot


*** Test Cases ***
FakerLibrary Words Generation
    ${words}=    FakerLibrary.Words
    Log    words: ${words}
    ${words}=    FakerLibrary.Words    nb=${10}
    Log    words: ${words}


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
