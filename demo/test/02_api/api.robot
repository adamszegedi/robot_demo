*** Settings ***
Documentation     Get Weatherapi requests
Force Tags    api
Resource    ${EXECDIR}/demo/resource/general.robot
Variables    variables.yaml

*** Test Cases ***
Test Case Budapest
    Get Weather For Hungarian City Budapest

Test Case Debrecen
    Get Weather For Hungarian City Debrecen