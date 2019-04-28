*** Settings ***
Library        FakerLibrary
Library        OperatingSystem
Library        ${EXECDIR}/demo/resource/extensions/robot_extension.py
Resource       ${EXECDIR}/demo/resource/google.robot
Resource       ${EXECDIR}/demo/resource/api.robot

*** Keywords ***
Test Execution Setup
    Import Variables  ${EXECDIR}/demo/env/enviroment.yaml
    Wait Until Keyword Succeeds  5x  10s  Open Browser    ${BASE_URL}  browser=chrome  remote_url=${REMOTE_URL}

