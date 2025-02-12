*** Settings ***
Resource  ../resources/keywords.robot

*** Test Cases ***
User Can Logout Successfully
    Open Browser And Navigate
    Login With Valid Credentials
    Logout
    Page Should Contain  Login
    Close Browser
