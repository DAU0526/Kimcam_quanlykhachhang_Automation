*** Settings ***

Resource    ../resources/common_keywords.resource
Resource    ../resources/page_objects/CustomerPage.resource


Suite Setup       Open Browser And Login

Suite Teardown    Close Application



*** Test Cases ***


# ==================================================
# TC01 UPDATE CUSTOMER SUCCESS
# ==================================================

TC01 Update Customer Success

    [Tags]    Positive    Update


    Go To Customer List Page


    Click Edit Customer


    Update Customer Name
    ...    Updated Customer



    Verify Customer Found
    ...    Updated Customer






# ==================================================
# TC02 UPDATE EMPTY NAME
# ==================================================

TC02 Update Empty Name

    [Tags]    Negative    Update


    Go To Customer List Page


    Click Edit Customer



    Clear Element Text
    ...    ${NAME_INPUT}



    Click Element
    ...    ${UPDATE_BUTTON}



    Verify Customer Validation
    ...    Name is required






# ==================================================
# TC03 UPDATE INVALID EMAIL
# ==================================================

TC03 Update Invalid Email

    [Tags]    Negative    Update


    Go To Customer List Page


    Click Edit Customer



    Clear Element Text
    ...    ${EMAIL_INPUT}



    Input Text
    ...    ${EMAIL_INPUT}
    ...    abc123



    Click Element
    ...    ${UPDATE_BUTTON}



  Verify Customer Validation
    ...    Please include an '@'






# ==================================================
# TC04 UPDATE INVALID PHONE
# ==================================================

TC04 Update Invalid Phone

    [Tags]    Negative    Update


    Go To Customer List Page


    Click Edit Customer



    Clear Element Text
    ...    ${PHONE_INPUT}



    Input Text
    ...    ${PHONE_INPUT}
    ...    abcxyz



    Click Element
    ...    ${UPDATE_BUTTON}



    Verify Customer Validation
    ...    Phone must start with 0 and contain exactly 10 digits





# ==================================================
# TC05 UPDATE SAME DATA
# ==================================================

TC05 Update Same Data

    [Tags]    Positive    Update


    Go To Customer List Page


    Click Edit Customer



    Update Customer Name
    ...    Updated Customer



    Verify Customer Found
    ...    Updated Customer






# ==================================================
# TC06 UPDATE MULTIPLE TIMES
# ==================================================

TC06 Update Multiple Times

    [Tags]    Positive    Update


    Go To Customer List Page


    Click Edit Customer


    Update Customer Name
    ...    Customer One



    Verify Customer Found
    ...    Customer One



    Go To Customer List Page



    Click Edit Customer


    Update Customer Name
    ...    Customer Two



    Verify Customer Found
    ...    Customer Two