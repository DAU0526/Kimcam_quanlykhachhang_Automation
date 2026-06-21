*** Settings ***

Resource    ../resources/common_keywords.resource

Suite Setup       Open Browser And Login
Suite Teardown    Close Application



*** Test Cases ***

# ==================================================
# TC01 CREATE CUSTOMER SUCCESS
# ==================================================

TC01 Create Customer Success

    Go To    ${BASE_URL}/add

    Wait Until Element Is Visible
    ...    xpath=//input[@name='name']
    ...    10s

    Input Text    xpath=//input[@name='name']       Nguyen Van A
    Input Text    xpath=//input[@name='email']      nguyenvana@gmail.com
    Input Text    xpath=//input[@name='phone']      0909123456
    Input Text    xpath=//input[@name='address']    Da Nang

    Click Element    xpath=//button[contains(text(),'Thêm khách hàng')]

    Sleep    2s

    Page Should Contain    Danh sách khách hàng


# ==================================================
# TC02 CREATE CUSTOMER EMPTY NAME
# ==================================================

TC02 Create Customer Empty Name

    Go To    ${BASE_URL}/add

    Wait Until Element Is Visible
    ...    xpath=//input[@name='email']
    ...    10s

    Input Text    xpath=//input[@name='email']      test@gmail.com
    Input Text    xpath=//input[@name='phone']      0909123456
    Input Text    xpath=//input[@name='address']    Da Nang

    Click Element    xpath=//button[contains(text(),'Thêm khách hàng')]

    Sleep    1s

    Page Should Contain    Tên là bắt buộc


# ==================================================
# TC03 CREATE CUSTOMER EMPTY EMAIL
# ==================================================

TC03 Create Customer Empty Email

    Go To    ${BASE_URL}/add

    Input Text    xpath=//input[@name='name']       Test User
    Input Text    xpath=//input[@name='phone']      0909123456
    Input Text    xpath=//input[@name='address']    Da Nang

    Click Element    xpath=//button[contains(text(),'Thêm khách hàng')]

    Sleep    1s

    Page Should Contain    Email là bắt buộc


# ==================================================
# TC04 CREATE CUSTOMER EMPTY PHONE
# ==================================================

TC04 Create Customer Empty Phone

    Go To    ${BASE_URL}/add

    Input Text    xpath=//input[@name='name']       Test User
    Input Text    xpath=//input[@name='email']      test@gmail.com
    Input Text    xpath=//input[@name='address']    Da Nang

    Click Element    xpath=//button[contains(text(),'Thêm khách hàng')]

    Sleep    1s

    Page Should Contain    Số điện thoại là bắt buộc


# ==================================================
# TC05 CREATE CUSTOMER EMPTY ADDRESS
# ==================================================

TC05 Create Customer Empty Address

    Go To    ${BASE_URL}/add

    Input Text    xpath=//input[@name='name']       Test User
    Input Text    xpath=//input[@name='email']      test@gmail.com
    Input Text    xpath=//input[@name='phone']      0909123456

    Click Element    xpath=//button[contains(text(),'Thêm khách hàng')]

    Sleep    1s

    Page Should Contain    Địa chỉ là bắt buộc


# ==================================================
# TC06 CREATE CUSTOMER STATUS CONTACTED
# ==================================================

TC06 Create Customer Status Contacted

    Go To    ${BASE_URL}/add

    Input Text    xpath=//input[@name='name']       Customer Contacted
    Input Text    xpath=//input[@name='email']      contacted@gmail.com
    Input Text    xpath=//input[@name='phone']      0909111111
    Input Text    xpath=//input[@name='address']    Da Nang

    Select From List By Value
    ...    xpath=//select[@name='status']
    ...    Contacted

    Click Element    xpath=//button[contains(text(),'Thêm khách hàng')]

    Sleep    2s

    Page Should Contain    Danh sách khách hàng


# ==================================================
# TC07 CREATE CUSTOMER STATUS POTENTIAL
# ==================================================

TC07 Create Customer Status Potential

    Go To    ${BASE_URL}/add

    Input Text    xpath=//input[@name='name']       Customer Potential
    Input Text    xpath=//input[@name='email']      potential@gmail.com
    Input Text    xpath=//input[@name='phone']      0909222222
    Input Text    xpath=//input[@name='address']    Da Nang

    Select From List By Value
    ...    xpath=//select[@name='status']
    ...    Potential

    Click Element    xpath=//button[contains(text(),'Thêm khách hàng')]

    Sleep    2s

    Page Should Contain    Danh sách khách hàng