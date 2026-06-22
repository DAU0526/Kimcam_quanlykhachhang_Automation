*** Settings ***

Library    SeleniumLibrary

Variables    ../locators/HomePageLocators.py


*** Keywords ***

Verify Logout Button Visible

    Wait Until Element Is Visible
    ...    ${LOGOUT_BUTTON}
    ...    20s

    Element Should Be Visible
    ...    ${LOGOUT_BUTTON}


Click Logout

    Wait Until Element Is Visible
    ...    ${LOGOUT_BUTTON}
    ...    10s

    Click Element
    ...    ${LOGOUT_BUTTON}