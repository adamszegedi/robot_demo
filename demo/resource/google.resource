*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Search For ${keyword}
    Input Text    xpath://textarea[@title="Keresés"]   ${keyword}
    Click Element    xpath://button[@aria-label="Google-keresés"]

Open Google Images
    Click Element    xpath://*[text()="Képek"]

