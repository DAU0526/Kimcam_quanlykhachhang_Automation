*** Settings ***

Library    SeleniumLibrary

Variables    ../locators/CustomerPageLocators.py



*** Keywords ***


# ==================================================
# CUSTOMER NAVIGATION
# ==================================================


Go To Customer Add Page

    Go To
    ...    ${BASE_URL}/add


    Wait Until Element Is Visible
    ...    ${NAME_INPUT}
    ...    15s

Go To Customer List Page

    Go To
    ...    ${BASE_URL}


    Wait Until Page Contains
    ...    Danh sách khách hàng
    ...    15s

    Wait Until Element Is Visible
    ...    ${SEARCH_INPUT}
    ...    15s

# ==================================================
# CREATE CUSTOMER
# ==================================================


Click Add Customer

    Wait Until Element Is Visible
    ...    ${ADD_BUTTON}
    ...    10s
    Click Element
    ...    ${ADD_BUTTON}

Create Customer With Information

    [Arguments]
    ...    ${name}
    ...    ${email}
    ...    ${phone}
    ...    ${address}

    Input Text
    ...    ${NAME_INPUT}
    ...    ${name}

    Input Text
    ...    ${EMAIL_INPUT}
    ...    ${email}

    Input Text
    ...    ${PHONE_INPUT}
    ...    ${phone}

    Input Text
    ...    ${ADDRESS_INPUT}
    ...    ${address}

    Click Element
    ...    ${SAVE_BUTTON}

Create Customer With Status

    [Arguments]
    ...    ${name}
    ...    ${email}
    ...    ${phone}
    ...    ${address}
    ...    ${status}

    Input Text
    ...    ${NAME_INPUT}
    ...    ${name}

    Input Text
    ...    ${EMAIL_INPUT}
    ...    ${email}

    Input Text
    ...    ${PHONE_INPUT}
    ...    ${phone}

    Input Text
    ...    ${ADDRESS_INPUT}
    ...    ${address}

    Select From List By Value
    ...    ${STATUS_SELECT}
    ...    ${status}

    Click Element
    ...    ${SAVE_BUTTON}

# ==================================================
# SEARCH
# ==================================================

Search Customer

    [Arguments]
    ...    ${text}

    Wait Until Element Is Visible
    ...    ${SEARCH_INPUT}
    ...    10s

    Clear Element Text
    ...    ${SEARCH_INPUT}

    Input Text
    ...    ${SEARCH_INPUT}
    ...    ${text}

    Click Element
    ...    ${SEARCH_BUTTON}

    Sleep    1s


# ==================================================
# UPDATE CUSTOMER
# ==================================================


Click Edit Customer

    Wait Until Element Is Visible
    ...    ${EDIT_BUTTON}
    ...    15s


    Click Element
    ...    ${EDIT_BUTTON}



Update Customer Name

    [Arguments]
    ...    ${new_name}


    Wait Until Element Is Visible
    ...    ${NAME_INPUT}
    ...    10s


    Clear Element Text
    ...    ${NAME_INPUT}


    Input Text
    ...    ${NAME_INPUT}
    ...    ${new_name}


    Click Element
    ...    ${UPDATE_BUTTON}




Update Customer Email

    [Arguments]
    ...    ${email}


    Wait Until Element Is Visible
    ...    ${EMAIL_INPUT}
    ...    10s


    Clear Element Text
    ...    ${EMAIL_INPUT}


    Input Text
    ...    ${EMAIL_INPUT}
    ...    ${email}


    Click Element
    ...    ${UPDATE_BUTTON}




Update Customer Phone

    [Arguments]
    ...    ${phone}


    Wait Until Element Is Visible
    ...    ${PHONE_INPUT}
    ...    10s


    Clear Element Text
    ...    ${PHONE_INPUT}


    Input Text
    ...    ${PHONE_INPUT}
    ...    ${phone}


    Click Element
    ...    ${UPDATE_BUTTON}


# ==================================================
# DELETE CUSTOMER
# ==================================================


Click Delete Customer

    Wait Until Element Is Visible
    ...    ${DELETE_BUTTON}
    ...    15s

    Scroll Element Into View
    ...    ${DELETE_BUTTON}

    Click Element
    ...    ${DELETE_BUTTON}

# ==================================================
# VERIFY
# ==================================================


Verify Customer Found

    [Arguments]
    ...    ${customer_name}

    Wait Until Page Contains
    ...    ${customer_name}
    ...    10s

Verify Customer Not Found

    [Arguments]
    ...    ${customer_name}

    Page Should Not Contain
    ...    ${customer_name}

Verify Customer Deleted

    [Arguments]
    ...    ${customer_name}

    Page Should Not Contain
    ...    ${customer_name}
Verify Customer Validation

    [Arguments]
    ...    ${message}



    Wait Until Page Contains
    ...    ${message}
    ...    10s