*** Settings ***

Resource    ../resources/common_keywords.resource

Resource    ../resources/page_objects/CustomerPage.resource


Suite Setup       Open Browser To Application

Suite Teardown    Close Application

Test Setup        Login CRM



*** Test Cases ***


TC01 Create Customer Success


    Click Add Customer


    Input Text    xpath=//input[@name='name']    Nguyen Van B


    Input Text    xpath=//input[@name='email']    nguyenvanb@gmail.com


    Input Text    xpath=//input[@name='phone']    0909123456


    Input Text    xpath=//input[@name='address']    Da Nang


    Click Element    xpath=//button[contains(text(),'Thêm khách hàng')]


    Sleep    2s


    Page Should Contain    Danh sách khách hàng





