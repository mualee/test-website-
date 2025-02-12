*** Settings ***
Resource  ../resources/keywords.robot

*** Test Cases ***
User Can Submit a Form
    Open Browser And Navigate
    Login With Valid Credentials
    Submit Form
    Page Should Contain  Form Submitted Successfully
    Close Browser
