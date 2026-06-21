*** Settings ***

Resource    ../resources/common_keywords.resource

Suite Setup       Open Browser And Login

Suite Teardown    Close Application



*** Test Cases ***


# ==================================================
# TC01 UPDATE CUSTOMER SUCCESS
# Cập nhật tên khách hàng thành công
# ==================================================

TC01 Update Customer Success

    Go To    ${BASE_URL}

    Wait Until Element Is Visible
    ...    xpath=(//button[@class='edit-btn'])[1]
    ...    10s

    Click Element
    ...    xpath=(//button[@class='edit-btn'])[1]

    Wait Until Element Is Visible
    ...    xpath=//input[@name='name']
    ...    10s

    Clear Element Text    xpath=//input[@name='name']

    Input Text    xpath=//input[@name='name']    Updated Customer

    Click Element
    ...    xpath=//button[contains(text(),'Cập nhật khách hàng')]

    Sleep    2s

    Page Should Contain    Updated Customer



