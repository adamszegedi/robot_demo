*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Search For ${keyword}
    Input Text    xpath://*[@aria-label="Google-keresés"] | //*[@type="search"]    ${keyword}
    Click Element    xpath://button[@aria-label="Google-keresés"]

Open Google Images
    Click Element    xpath://*[text()="Képek"]

