*** Settings ***

# Keyword dùng chung
Resource    ../resources/common_keywords.resource

# Login Page Object
Resource    ../resources/page_objects/LoginPage.resource

# Home Page Object
Resource    ../resources/page_objects/HomePage.resource


# Mở browser trước khi chạy suite
Suite Setup       Open Browser To Application

# Đóng browser sau khi chạy suite
Suite Teardown    Close Application

# Login trước mỗi testcase
Test Setup        Login CRM


*** Test Cases ***

# ==================================================
# TC01 - Logout thành công
# ==================================================
TC01 Logout Success
    [Tags]    Positive    Logout

    # Kiểm tra nút Logout xuất hiện
    Wait Until Element Is Visible
    ...    ${LOGOUT_BUTTON}
    ...    10s

    # Click Logout
    Click Logout

    # Kiểm tra quay về màn hình Login
    Wait Until Element Is Visible
    ...    ${LOGIN_BUTTON}
    ...    10s