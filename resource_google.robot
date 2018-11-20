*** Settings ***
Library        SeleniumLibrary
Library        FakerLibrary
Library            ./robot_extension.py

*** Keywords ***
Search For ${keyword}
    Input Text  xpath://input[@id='lst-ib']  ${keyword}
    Click Element  xpath://button[@type='submit']

Open Google Images
    Click Element  xpath://*[text()='Images']