*** Settings ***
Library     FakerLibrary
Library     OperatingSystem
Library     SeleniumLibrary
Library     ${EXECDIR}/demo/resource/extensions/robot_extension.py
Resource    ${EXECDIR}/demo/resource/google.resource
Resource    ${EXECDIR}/demo/resource/api.resource


*** Keywords ***
Test Execution Setup
    Import Variables    ${EXECDIR}/demo/env/enviroment.yaml
    ${REMOTE_URL} =    OperatingSystem.Get Environment Variable    REMOTE_URL    default=None
    Wait Until Keyword Succeeds
    ...    5x
    ...    10s
    ...    Open Browser
    ...    ${BASE_URL}
    ...    browser=chrome
    ...    remote_url=${REMOTE_URL}
    Click Element    //*[text()="Az összes elfogadása"]
