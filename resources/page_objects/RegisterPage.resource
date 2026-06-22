*** Settings ***

Library    SeleniumLibrary

Variables    ../locators/RegisterPageLocators.py


*** Keywords ***


Click Register Page

    Wait Until Element Is Visible
    ...    ${REGISTER_LINK}
    ...    10s

    Click Element
    ...    ${REGISTER_LINK}



Enter Register Name

    [Arguments]    ${name}

    Wait Until Element Is Visible
    ...    ${NAME_INPUT}
    ...    10s

    Input Text
    ...    ${NAME_INPUT}
    ...    ${name}



Enter Register Email

    [Arguments]    ${email}

    Wait Until Element Is Visible
    ...    ${EMAIL_INPUT}
    ...    10s

    Input Text
    ...    ${EMAIL_INPUT}
    ...    ${email}



Enter Register Phone

    [Arguments]    ${phone}

    Wait Until Element Is Visible
    ...    ${PHONE_INPUT}
    ...    10s

    Input Text
    ...    ${PHONE_INPUT}
    ...    ${phone}



Enter Register Password

    [Arguments]    ${password}

    Wait Until Element Is Visible
    ...    ${PASSWORD_INPUT}
    ...    10s

    Input Text
    ...    ${PASSWORD_INPUT}
    ...    ${password}



Enter Confirm Password

    [Arguments]    ${password}

    Wait Until Element Is Visible
    ...    ${CONFIRM_PASSWORD_INPUT}
    ...    10s

    Input Text
    ...    ${CONFIRM_PASSWORD_INPUT}
    ...    ${password}



Click Register

    Wait Until Element Is Visible
    ...    ${REGISTER_BUTTON}
    ...    10s

    Click Element
    ...    ${REGISTER_BUTTON}




Register With Information

    [Arguments]
    ...    ${name}
    ...    ${email}
    ...    ${phone}
    ...    ${password}
    ...    ${confirm_password}


    Enter Register Name
    ...    ${name}


    Enter Register Email
    ...    ${email}


    Enter Register Phone
    ...    ${phone}


    Enter Register Password
    ...    ${password}


    Enter Confirm Password
    ...    ${confirm_password}


    Click Register




Verify Error Message

    [Arguments]    ${message}


    Wait Until Element Is Visible
    ...    ${ERROR_MESSAGE}
    ...    10s


    Element Should Contain
    ...    ${ERROR_MESSAGE}
    ...    ${message}