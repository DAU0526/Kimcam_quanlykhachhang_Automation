*** Settings ***

Resource    ../resources/common_keywords.resource
Resource    ../resources/page_objects/CustomerPage.resource


Suite Setup       Open Browser And Login
Suite Teardown    Close Application



*** Test Cases ***


TC01 Delete Customer Success

    [Tags]    Positive    Delete


    Go To Customer List Page


    Click Delete Customer


    Handle Alert
    ...    ACCEPT


    Wait Until Page Contains
    ...    Danh sách khách hàng
    ...    10s






TC02 Cancel Delete Customer

    [Tags]    Negative    Delete


    Go To Customer List Page


    Click Delete Customer


    Handle Alert
    ...    DISMISS


    Wait Until Page Contains
    ...    Danh sách khách hàng
    ...    10s

