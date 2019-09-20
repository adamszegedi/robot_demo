*** Settings ***
Documentation     Get Weatherapi requests
Force Tags    api
Resource    ${EXECDIR}/demo/resource/general.resource
Variables    variables.yaml

*** Test Cases ***
Test Case Budapest
    Get Weather For Hungarian City Budapest

Test Case Debrecen
    Get Weather For Hungarian City Debrecen

Test Case Eger
    Get Weather For Hungarian City Eger

Test Case Siófok
    Get Weather For Hungarian City Siófok
