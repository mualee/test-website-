*** Settings ***
Resource  ../resources/keywords.robot

*** Test Cases ***
User Can Navigate to Dashboard
    Open Browser And Navigate
    Login With Valid Credentials
    Click Element  ${NAV_LINK}
    Page Should Contain  Dashboard
    Close Browser
