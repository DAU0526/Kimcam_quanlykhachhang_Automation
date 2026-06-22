*** Settings ***

Resource    ../resources/common_keywords.resource
Resource    ../resources/page_objects/CustomerPage.resource


Suite Setup       Open Browser And Login
Suite Teardown    Close Application



*** Test Cases ***


TC01 Create Customer Success

    [Tags]    Positive    Create


    Go To Customer Add Page


    Create Customer With Information
    ...    ${CUSTOMER_NAME}
    ...    ${CUSTOMER_EMAIL}
    ...    ${CUSTOMER_PHONE}
    ...    ${CUSTOMER_ADDRESS}


    Wait Until Page Contains
    ...    Danh sách khách hàng
    ...    15s


    Verify Customer Found
    ...    ${CUSTOMER_NAME}





TC02 Create Customer Empty Name

    [Tags]    Negative    Create


    Go To Customer Add Page


    Input Text
    ...    ${EMAIL_INPUT}
    ...    ${CUSTOMER_EMAIL}


    Input Text
    ...    ${PHONE_INPUT}
    ...    ${CUSTOMER_PHONE}


    Input Text
    ...    ${ADDRESS_INPUT}
    ...    ${CUSTOMER_ADDRESS}


    Click Element
    ...    ${SAVE_BUTTON}


    Verify Customer Validation
    ...    Tên là bắt buộc





TC03 Create Customer Empty Email

    [Tags]    Negative    Create


    Go To Customer Add Page


    Input Text
    ...    ${NAME_INPUT}
    ...    ${CUSTOMER_NAME}


    Input Text
    ...    ${PHONE_INPUT}
    ...    ${CUSTOMER_PHONE}


    Input Text
    ...    ${ADDRESS_INPUT}
    ...    ${CUSTOMER_ADDRESS}


    Click Element
    ...    ${SAVE_BUTTON}


    Verify Customer Validation
    ...    Email là bắt buộc





TC04 Create Customer Empty Phone

    [Tags]    Negative    Create


    Go To Customer Add Page


    Input Text
    ...    ${NAME_INPUT}
    ...    ${CUSTOMER_NAME}


    Input Text
    ...    ${EMAIL_INPUT}
    ...    ${CUSTOMER_EMAIL}


    Input Text
    ...    ${ADDRESS_INPUT}
    ...    ${CUSTOMER_ADDRESS}


    Click Element
    ...    ${SAVE_BUTTON}


    Verify Customer Validation
    ...    Số điện thoại là bắt buộc





TC05 Create Customer Empty Address

    [Tags]    Negative    Create


    Go To Customer Add Page


    Input Text
    ...    ${NAME_INPUT}
    ...    ${CUSTOMER_NAME}


    Input Text
    ...    ${EMAIL_INPUT}
    ...    ${CUSTOMER_EMAIL}


    Input Text
    ...    ${PHONE_INPUT}
    ...    ${CUSTOMER_PHONE}


    Click Element
    ...    ${SAVE_BUTTON}


    Verify Customer Validation
    ...    Địa chỉ là bắt buộc





TC06 Create Customer Status Contacted

    [Tags]    Positive    Create


    Go To Customer Add Page


    Create Customer With Status
    ...    Customer Contacted H
    ...    contacted1@gmail.com
    ...    0909111111
    ...    ${CUSTOMER_ADDRESS}
    ...    Contacted


    Wait Until Page Contains
    ...    Danh sách khách hàng
    ...    15s


    Verify Customer Found
    ...    Customer Contacted






TC07 Create Customer Status Potential

    [Tags]    Positive    Create


    Go To Customer Add Page


    Create Customer With Status
    ...    Customer Potential H
    ...    potential1@gmail.com
    ...    0909222222
    ...    ${CUSTOMER_ADDRESS}
    ...    Potential


    Wait Until Page Contains
    ...    Danh sách khách hàng
    ...    15s


    Verify Customer Found
    ...    Customer Potential