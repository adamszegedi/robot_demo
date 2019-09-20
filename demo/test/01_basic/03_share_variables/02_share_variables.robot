*** Settings ***
Documentation  Variables Outside Test Scopes

***Test Cases ***
Reach Out Previously Setted Global Variable
    Variable Should Exist  ${color_global}
