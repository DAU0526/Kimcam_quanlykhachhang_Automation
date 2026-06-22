*** Settings ***

Library    SeleniumLibrary

Variables    ../locators/LoginPageLocators.py


*** Keywords ***

Enter Email

    [Arguments]    ${email}

    Wait Until Element Is Visible
    ...    ${EMAIL_INPUT}
    ...    10s

    Input Text
    ...    ${EMAIL_INPUT}
    ...    ${email}


Enter Password

    [Arguments]    ${password}

    Wait Until Element Is Visible
    ...    ${PASSWORD_INPUT}
    ...    10s

    Input Text
    ...    ${PASSWORD_INPUT}
    ...    ${password}


Click Login

    Wait Until Element Is Visible
    ...    ${LOGIN_BUTTON}
    ...    10s

    Click Element
    ...    ${LOGIN_BUTTON}


Login With Credentials

    [Arguments]
    ...    ${email}
    ...    ${password}

    Enter Email
    ...    ${email}

    Enter Password
    ...    ${password}

    Click Login

Verify Error Message

    [Arguments]    ${message}

    Wait Until Element Is Visible
    ...    ${ERROR_BOX}
    ...    10s

    Element Text Should Be
    ...    ${ERROR_BOX}
    ...    ${message}