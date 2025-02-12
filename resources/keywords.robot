*** Settings ***
Library  SeleniumLibrary
Resource  locators.robot

*** Keywords ***
Open Browser And Navigate
    Set Selenium Timeout    ${TIMEOUT}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Login With Invalid Username
    Wait Until Element Is Visible    ${LOGIN_FIELD}    ${TIMEOUT}
    Input Text    ${LOGIN_FIELD}    ${FilseUSERNAME}
    Input Text    ${PASSWORD_FIELD}    ${TurePASSWORD}
    Click Button  ${LOGIN_BUTTON}
    Wait Until Element Is Visible   ${ERROR_MSG}

Login With Invalid Password
    Wait Until Element Is Visible    ${LOGIN_FIELD}    ${TIMEOUT}
    Input Text    ${LOGIN_FIELD}    ${TureUSERNAME}
    Input Text    ${PASSWORD_FIELD}    ${FilsePASSWORD}
    Click Button  ${LOGIN_BUTTON}
    Wait Until Element Is Visible   ${ERROR_MSG}

Login With Valid Credentials
    Wait Until Element Is Visible    ${LOGIN_FIELD}    ${TIMEOUT}
    Input Text    ${LOGIN_FIELD}    ${TureUSERNAME}
    Input Text    ${PASSWORD_FIELD}    ${TurePASSWORD}
    Click Button  ${LOGIN_BUTTON}
    Wait Until Element Is Visible  ${NAV_LINK}

# Submit Form
#     Wait Until Element Is Visible    ${FORM_INPUT}    ${TIMEOUT}
#     Input Text    ${FORM_INPUT}    Test Data
#     Click Button  ${SUBMIT_BTN}
#     Wait Until Element Is Visible  ${SUCCESS_MSG}

# Logout
#     Wait Until Element Is Visible    ${LOGOUT_BUTTON}    ${TIMEOUT}
#     Click Button  ${LOGOUT_BUTTON}
#     Wait Until Page Contains  "Login"
