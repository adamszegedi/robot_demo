*** Settings ***
Documentation       Context Managers Example

Resource            ${CURDIR}/../../resource/general.resource

Suite Setup         Log To Console    ${\n} Suite Setup Message
Suite Teardown      Log To Console    ${\n} Suite Teardown Message
Test Setup          Log To Console    ${\n} Test Setup Message
Test Teardown       Log To Console    ${\n} Test Teardown Message ${\n}

Force Tags          context


*** Test Cases ***
Context Managers Are Easy To Use
    Log To Console    ${\n} Example to Use Context Managers
