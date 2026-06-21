*** Settings ***

# ==================================================
# IMPORT RESOURCE
# ==================================================

# Import keyword dùng chung:
# - Mở Chrome
# - Đóng Chrome
# - Load biến môi trường
Resource    ../resources/common_keywords.resource


# Import Page Object Login:
# - Enter Email
# - Enter Password
# - Click Login
Resource    ../resources/page_objects/LoginPage.resource


# Import Page Object Home:
# - Click Logout
Resource    ../resources/page_objects/HomePage.resource



# ==================================================
# SETUP / TEARDOWN
# ==================================================

# Chạy 1 lần trước khi bắt đầu test
# Mở trình duyệt Chrome
Suite Setup       Open Browser To Application


# Chạy 1 lần sau khi tất cả test kết thúc
# Đóng trình duyệt
Suite Teardown    Close Application



# Chạy trước mỗi testcase
# Đưa trang về trang login
Test Setup        Go To    ${BASE_URL}



*** Variables ***

# URL website CRM
${BASE_URL}    https://simple-crm-hcur.vercel.app/



*** Test Cases ***


# ==================================================
# TC01: LOGIN THÀNH CÔNG
# ==================================================

TC01 Login Success

     
    # Nhập email hợp lệ
    Enter Email    kim@gmail.com


    # Nhập password đúng
    Enter Password    kimcam17


    # Click nút đăng nhập
    Click Login


    # Chờ trang Home hiển thị nút Logout
    Wait Until Page Contains Element    xpath=//button[contains(@class,'logout-btn')]    10s


    # Kiểm tra logout xuất hiện
    Element Should Be Visible    xpath=//button[contains(@class,'logout-btn')]

    # logout
    Click Logout


# ==================================================
# TC02: LOGIN SAI PASSWORD
# ==================================================

TC02 Login Wrong Password


    # Nhập email đúng
    Enter Email    kim@gmail.com


    # Nhập mật khẩu sai
    Enter Password    111111


    # Submit login
    Click Login


    # Chờ thông báo
    Sleep    2s


    # Kiểm tra lỗi password
    Page Should Contain    Sai mật khẩu





# ==================================================
# TC03: EMAIL KHÔNG TỒN TẠI
# ==================================================

TC03 Login Wrong Email


    # Nhập email không có trong hệ thống
    Enter Email    abc@gmail.com


    # Nhập password
    Enter Password    kimcam17


    # Click login
    Click Login


    Sleep    2s


    # Kiểm tra thông báo lỗi email
    Page Should Contain    Sai email





# ==================================================
# TC04: EMAIL RỖNG
# ==================================================

TC04 Login Empty Email


    # Không nhập email


    # Nhập password
    Enter Password    kimcam17


    # Click login
    Click Login


    Sleep    2s


    # Kiểm tra validate
    Page Should Contain    Vui lòng nhập email





# ==================================================
# TC05: PASSWORD RỖNG
# ==================================================

TC05 Login Empty Password


    # Nhập email
    Enter Email    kim@gmail.com


    # Không nhập password


    # Click login
    Click Login


    Sleep    2s


    # Kiểm tra validate password
    Page Should Contain    Vui lòng nhập mật khẩu





# ==================================================
# TC06: PASSWORD SAI FORMAT
# ==================================================

TC06 Login Wrong Format


    # Nhập email
    Enter Email    kim@gmail.com


    # Password sai
    Enter Password    kimc am17


    # Click login
    Click Login


    Sleep    2s





# ==================================================
# TC07: LOGIN SAU ĐÓ LOGOUT
# ==================================================

TC07 Logout After Login


    # Login thành công trước
    Enter Email    kim@gmail.com


    Enter Password    kimcam17


    # Click đăng nhập
    Click Login



    # Chờ nút logout xuất hiện
    Wait Until Page Contains Element    xpath=//button[contains(@class,'logout-btn')]    10s



    # Click nút Đăng xuất
    Click Logout



    # Đợi trang login load lại
    Sleep    3s



    # Kiểm tra quay về màn hình login
    Wait Until Page Contains Element    xpath=//button    10s