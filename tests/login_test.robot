*** Settings ***
Resource  ../resources/keywords.robot

*** Test Cases ***
User Can't Login Successfully name
    Open Browser And Navigate
    Login With Valid Credentials name f
    Page Should Contain  error
    # Close Browser
User Can't Login Successfully pass
    # Open Browser And Navigate
    Login With Valid Credentials pass f
    Page Should Contain  error
    # Close Browser
User Can Login Successfully
    # Open Browser And Navigate
    Login With Valid Credentials
    Page Should Contain  Dashboard
    Close Browser
