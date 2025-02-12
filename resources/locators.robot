*** Variables ***
# Configuration
${URL}              https://staging.cintaindonesiaclub.com/en/login
${BROWSER}          chrome
${TIMEOUT}          20s

# Credentials
${TureUSERNAME}         mualee072@gmail.com
${TurePASSWORD}         @Aa111111
${FilseUSERNAME}         mualee070@gmail.com
${FilsePASSWORD}         @Aa1111100

# Login Page Locators
${LOGIN_FIELD}      xpath=//input[@name='email']
${PASSWORD_FIELD}   xpath=//input[@name='password']
${LOGIN_BUTTON}     xpath=//button[@type='submit']
${REMEMBER_ME}      xpath=//input[@type='checkbox']

# Navigation Locators
${NAV_LINK}    xpath=//a[@href='/en']
${NoNAV_LINK}    xpath=//a[@href='/en/login']
${LOGOUT_BUTTON}    xpath=//button[contains(text(), 'Logout')]

# Form Elements
${FORM_INPUT}       xpath=//input[@id='input-field']
${SUBMIT_BTN}       xpath=//button[@type='submit']
${SUCCESS_MSG}      xpath=//div[contains(@class, 'success')]

#text Error 
${ERROR_MSG}    xpath=//p[contains(text(),'Email or password is invalid. Please try again')]
