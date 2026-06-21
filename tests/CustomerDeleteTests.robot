*** Settings ***

Resource    ../resources/common_keywords.resource

Suite Setup       Open Browser And Login
Suite Teardown    Close Application



*** Test Cases ***

TC01 Delete Customer Success

    Go To    ${BASE_URL}

    Wait Until Element Is Visible    xpath=(//button[contains(@class,'delete-btn')])[1]    10s

    Click Element    xpath=(//button[contains(@class,'delete-btn')])[1]

    Sleep    1s

    Handle Alert    ACCEPT

    Sleep    2s



TC02 Cancel Delete Customer

    Go To    ${BASE_URL}

    Run Keyword And Ignore Error    Handle Alert

    Wait Until Element Is Visible    xpath=(//button[contains(@class,'delete-btn')])[1]    10s

    Click Element    xpath=(//button[contains(@class,'delete-btn')])[1]

    Sleep    1s

    Handle Alert    DISMISS

    Sleep    2s



TC03 Delete Multiple Customers

    Go To    ${BASE_URL}

    Run Keyword And Ignore Error    Handle Alert

    Wait Until Element Is Visible    xpath=(//button[contains(@class,'delete-btn')])[1]    10s

    Click Element    xpath=(//button[contains(@class,'delete-btn')])[1]

    Sleep    1s

    Handle Alert    ACCEPT

    Sleep    2s

    Reload Page

    Wait Until Element Is Visible    xpath=(//button[contains(@class,'delete-btn')])[1]    10s

    Click Element    xpath=(//button[contains(@class,'delete-btn')])[1]

    Sleep    1s

    Handle Alert    ACCEPT

    Sleep    2s