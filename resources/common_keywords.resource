*** Settings ***

Library    SeleniumLibrary

Variables    environment.variables.yml
*** Keywords ***
# ==================================================
# BROWSER MANAGEMENT
# ==================================================
Open Browser To Application

    Open Browser
    ...    ${BASE_URL}
    ...    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element
    ...    xpath=//body
    ...    10s

Open Browser And Login

    Open Browser To Application

    Login CRM

Close Application

    Close All Browsers

Reload Page

    Reload Page
# ==================================================
# NAVIGATION
# ==================================================

Go To Login Page

    Go To
    ...    ${BASE_URL}/login

    Wait Until Element Is Visible
    ...    xpath=//input[@type='email']
    ...    15s

# ==================================================
# AUTHENTICATION
# ==================================================

Login CRM

    Go To
    ...    ${BASE_URL}


    Wait Until Element Is Visible
    ...    xpath=//input[@type='email']
    ...    15s


    Input Text
    ...    xpath=//input[@type='email']
    ...    ${VALID_EMAIL}


    Input Text
    ...    xpath=//input[@type='password']
    ...    ${VALID_PASSWORD}


    Click Element
    ...    xpath=//button


    Wait Until Page Contains
    ...    Danh sách khách hàng
    ...    20s

# ==================================================
# LOGIN TEST KEYWORDS
# ==================================================


Login With Credentials

    [Arguments]
    ...    ${email}
    ...    ${password}


    Go To Login Page


    Input Text
    ...    xpath=//input[@type='email']
    ...    ${email}



    Input Text
    ...    xpath=//input[@type='password']
    ...    ${password}



    Click Element
    ...    xpath=//button

Enter Email

    [Arguments]
    ...    ${email}


    Wait Until Element Is Visible
    ...    xpath=//input[@type='email']
    ...    10s


    Input Text
    ...    xpath=//input[@type='email']
    ...    ${email}
Enter Password

    [Arguments]
    ...    ${password}


    Wait Until Element Is Visible
    ...    xpath=//input[@type='password']
    ...    10s


    Input Text
    ...    xpath=//input[@type='password']
    ...    ${password}

Click Login


    Click Element
    ...    xpath=//button
# ==================================================
# LOGOUT
# ==================================================


Verify Logout Button Visible

    Wait Until Element Is Visible
    ...    xpath=//button[contains(text(),'Logout')]
    ...    10s


Common Click Logout

    Click Element
    ...    xpath=//button[contains(text(),'Logout')]


    Wait Until Element Is Visible
    ...    xpath=//input[@type='email']
    ...    10s
# ==================================================
# VALIDATION
# ==================================================


Verify Error Message

    [Arguments]
    ...    ${message}


    Wait Until Page Contains
    ...    ${message}
    ...    10s