*** Settings ***

Library    SeleniumLibrary

Variables    ../locators/RegisterPageLocators.py


*** Keywords ***


Click Register Page

    Wait Until Element Is Visible    ${REGISTER_LINK}    10s

    Click Element    ${REGISTER_LINK}



Enter Register Name

    [Arguments]    ${name}

    Wait Until Element Is Visible    ${NAME_INPUT}    10s

    Input Text    ${NAME_INPUT}    ${name}



Enter Register Email

    [Arguments]    ${email}

    Input Text    ${EMAIL_INPUT}    ${email}



# Nhập số điện thoại

Enter Register Phone

    [Arguments]    ${phone}

    Input Text    ${PHONE_INPUT}    ${phone}


Enter Register Password

    [Arguments]    ${password}

    Input Text    ${PASSWORD_INPUT}    ${password}

Enter Confirm Password

    [Arguments]    ${password}

    Wait Until Element Is Visible    ${CONFIRM_PASSWORD_INPUT}    10s

    Input Text    ${CONFIRM_PASSWORD_INPUT}    ${password}

Click Register

    Click Element    ${REGISTER_BUTTON}