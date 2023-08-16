*** Settings ***
Library     FakerLibrary
Library     OperatingSystem
Library     SeleniumLibrary
Library     ${CURDIR}/extensions/robot_extension.py
Resource    ${CURDIR}/google.resource
Resource    ${CURDIR}/api.resource


*** Keywords ***
Test Execution Setup
    Import Variables    ${CURDIR}/../env/enviroment.yaml
    Wait Until Keyword Succeeds
    ...    5x
    ...    10s
    ...    Open Browser
    ...    ${BASE_URL}
    ...    browser=chrome
    Click Element    //*[text()="Az összes elfogadása"]
