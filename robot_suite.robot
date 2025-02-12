*** Settings ***
Resource  resources/keywords.robot
Test Setup  Open Browser And Navigate
Test Teardown  Close Browser

*** Test Cases ***
User Can't Login Successfully name
    Login With Invalid Username
    Page Should Contain Element   ${ERROR_MSG}
    
User Can't Login Successfully pass
    Login With Invalid Password
    Page Should Contain Element   ${ERROR_MSG}
    
User Can Login Successfully
    Login With Valid Credentials
    Page Should Contain Element  ${NAV_LINK}

# User Can Submit Form 
#     Login With Valid Credentials
#     Submit Form
#     Page Should Contain Element  ${SUCCESS_MSG}
    
# User Can Logout
#     Login With Valid Credentials
#     Logout
#     Page Should Contain  Login
