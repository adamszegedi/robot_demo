*** Settings ***
Documentation     Basic Usage Examples

Force Tags    basic
Resource    ${EXECDIR}/demo/resource/general.resource


*** Test Cases ***
Define Keyword In Test Cases
    ${message} =  You Can Define Own Keyword In Test Files
    Log  ${message}

Create New Keywords Based on Your Previous Ones
    Use Your Predifinied Keyword Inside Other Keyword

Get enviroment variable is easy
    [Tags]    enviroment
    ${variable} =    Get Environment Variable    FIZZ
    Log    ${variable}

New For Loop Concept Since release 3.1
    [Tags]    for
    ${list} =    Create List  cat    dog    cow
    FOR    ${animal}    IN    @{list}
        Log    ${animal}
        No Operation
    END

Reach Inner Object since release 3.1
    [Tags]    dictionary
    ${list_mammal} =    Create List    horse    cat    dog
    ${list_birds} =    Create List    Hawk    Eagle
    ${dictionary} =    Create Dictionary  mammal=${list_mammal}    bird=${list_birds}
    Log    ${dictionary}[bird]
    Log    ${dictionary}[mammal][1]

FakerLibrary Words Generation
    ${words}=    FakerLibrary.Words
    Log    words: ${words}
    ${words}=    FakerLibrary.Words    nb=${10}
    Log    words: ${words}

Use Custom Python Code
    ${upper_string} =    make upper    french bulldog
    Log  ${upper_string}

*** Keywords ***
You Can Define Own Keyword In Test Files
    ${message} =  Set Variable  Hello World
    [Return]  ${message}

Use Your Predifinied Keyword Inside Other Keyword
    ${message} =  You Can Define Own Keyword In Test Files
    [Return]  ${message}
