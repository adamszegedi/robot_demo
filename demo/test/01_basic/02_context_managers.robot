*** Settings ***
Documentation     Context Managers Example
Force Tags    context
Resource    ${EXECDIR}/demo/resource/general.robot
Suite Setup    Log To Console  ${\n} Suite Setup Message
Test Setup    Log To Console  ${\n} Test Setup Message
Test Teardown   Log To Console  ${\n} Test Teardown Message ${\n}
Suite Teardown    Log To Console  ${\n} Suite Teardown Message

*** Test Cases ***
Context Managers Are Easy To Use
    Log To Console  ${\n} Example to Use Context Managers