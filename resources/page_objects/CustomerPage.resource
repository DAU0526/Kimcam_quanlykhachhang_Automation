*** Settings ***

Library    SeleniumLibrary

Variables    ../locators/CustomerPageLocators.py



*** Keywords ***

Go To Add Customer Page

    Go To    ${BASE_URL}/add

    Wait Until Element Is Visible
    ...    xpath=//input[@name='name']
    ...    10s


Click Add Customer

    Wait Until Element Is Visible    ${ADD_BUTTON}    10s

    Click Element    ${ADD_BUTTON}



Search Customer

    [Arguments]    ${text}

    Wait Until Element Is Visible    ${SEARCH_INPUT}    10s

    Input Text    ${SEARCH_INPUT}    ${text}

    Click Element    ${SEARCH_BUTTON}



Click Edit Customer

    Wait Until Element Is Visible    ${EDIT_BUTTON}    10s

    Click Element    ${EDIT_BUTTON}



Click Delete Customer

    Wait Until Element Is Visible    ${DELETE_BUTTON}    10s

    Click Element    ${DELETE_BUTTON}