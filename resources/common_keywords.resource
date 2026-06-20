*** Settings ***

Library    SeleniumLibrary

Variables    environment.variables.yml



*** Keywords ***


Open Browser To Application


    Open Browser
    ...    ${BASE_URL}
    ...    ${BROWSER}


    Maximize Browser Window


    Sleep    2s





Open Browser And Login


    Open Browser To Application


    Login CRM





Close Application


    Close All Browsers





Reload Page


    Reload Page





Go To Login Page


    Go To    ${BASE_URL}


    Sleep    2s





Login CRM

    Go To    ${BASE_URL}

    Wait Until Element Is Visible    xpath=//input[@type='email']    10s

    Input Text    xpath=//input[@type='email']    ${VALID_EMAIL}

    Input Text    xpath=//input[@type='password']    ${VALID_PASSWORD}

    Click Element    xpath=//button

    Sleep    3s