*** Settings ***

Library    SeleniumLibrary



*** Variables ***

${EMAIL_INPUT}       xpath=//input[@type='email']

${PASSWORD_INPUT}    xpath=//input[@type='password']

${LOGIN_BUTTON}      xpath=//button



*** Keywords ***


Enter Email

    [Arguments]    ${email}

    Wait Until Element Is Visible    ${EMAIL_INPUT}    10s

    Input Text    ${EMAIL_INPUT}    ${email}



Enter Password

    [Arguments]    ${password}

    Wait Until Element Is Visible    ${PASSWORD_INPUT}    10s

    Input Text    ${PASSWORD_INPUT}    ${password}



Click Login

    Wait Until Element Is Visible    ${LOGIN_BUTTON}    10s

    Click Element    ${LOGIN_BUTTON}