*** Settings ***
Library        SeleniumLibrary

*** Keywords ***
Search For ${keyword}
    Input Text  xpath://input[@title="Keresés"]  ${keyword}
    Click Element  xpath://button[@aria-label="Google-keresés"]

Open Google Images
    Click Element  xpath://*[text()="Képek"]