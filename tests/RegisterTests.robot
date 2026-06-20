*** Settings ***

Resource    ../resources/common_keywords.resource
Resource    ../resources/page_objects/RegisterPage.resource


Suite Setup       Open Browser To Application
Suite Teardown    Close Application

Test Setup        Go To Login Page



*** Test Cases ***


TC01 Register Success

    Click Register Page

    Enter Register Name    Nguyen Van A
    Enter Register Email    nguyenvana100@gmail.com
    Enter Register Phone    0909123456
    Enter Register Password    kimcam17
    Enter Confirm Password    kimcam17

    Click Register

    Sleep    2s

    Run Keyword And Ignore Error    Handle Alert    accept



TC02 Register Duplicate Email

    Click Register Page

    Enter Register Name    Nguyen Van B
    Enter Register Email    kim@gmail.com
    Enter Register Phone    0909123456
    Enter Register Password    kimcam17
    Enter Confirm Password    kimcam17

    Click Register

    Sleep    2s

    Run Keyword And Ignore Error    Handle Alert    accept

    Page Should Contain    Email đã tồn tại



TC03 Register Empty Name

    Click Register Page

    Enter Register Email    test01@gmail.com
    Enter Register Phone    0909123456
    Enter Register Password    kimcam17
    Enter Confirm Password    kimcam17

    Click Register

    Sleep    2s

    Page Should Contain    tên



TC04 Register Empty Email

    Click Register Page

    Enter Register Name    Nguyen Van C
    Enter Register Phone    0909123456
    Enter Register Password    kimcam17
    Enter Confirm Password    kimcam17

    Click Register

    Sleep    2s

    Page Should Contain    Vui lòng nhập email



TC05 Register Empty Password

    Click Register Page

    Enter Register Name    Nguyen Van D
    Enter Register Email    test02@gmail.com
    Enter Register Phone    0909123456
    Enter Confirm Password    kimcam17

    Click Register

    Sleep    2s

    Page Should Contain    Vui lòng nhập mật khẩu



TC06 Register Weak Password

    Click Register Page

    Enter Register Name    Nguyen Van E
    Enter Register Email    test03@gmail.com
    Enter Register Phone    0909123456

    Enter Register Password    123
    Enter Confirm Password    123

    Click Register

    Sleep    2s

    Page Should Contain    Đăng ký



TC07 Register Wrong Email

    Click Register Page

    Enter Register Name    Nguyen Van F
    Enter Register Email    abc
    Enter Register Phone    0909123456
    Enter Register Password    kimcam17
    Enter Confirm Password    kimcam17

    Click Register

    Sleep    2s

    Page Should Contain    Đăng ký



TC08 Register Valid Phone

    Click Register Page

    Enter Register Name    Nguyen Phone
    Enter Register Email    phone100@gmail.com
    Enter Register Phone    0912345678
    Enter Register Password    kimcam17
    Enter Confirm Password    kimcam17

    Click Register

    Sleep    2s

    Run Keyword And Ignore Error    Handle Alert    accept



TC09 Empty Phone

    Click Register Page

    Enter Register Name    Nguyen Phone
    Enter Register Email    phone101@gmail.com

    Enter Register Password    kimcam17
    Enter Confirm Password    kimcam17

    Click Register

    Sleep    2s

    Page Should Contain    Vui lòng nhập số điện thoại



TC10 Invalid Phone

    Click Register Page

    Enter Register Name    Nguyen Phone
    Enter Register Email    phone102@gmail.com

    Enter Register Phone    abc

    Enter Register Password    kimcam17
    Enter Confirm Password    kimcam17

    Click Register

    Sleep    2s

    Page Should Contain    số điện thoại



TC11 Password Not Match

    Click Register Page

    Enter Register Name    Nguyen Confirm
    Enter Register Email    confirm@gmail.com
    Enter Register Phone    0922222222

    Enter Register Password    kimcam17
    Enter Confirm Password    12345678

    Click Register

    Sleep    2s

    Page Should Contain    Mật khẩu không khớp



TC12 Empty Confirm Password

    Click Register Page

    Enter Register Name    Nguyen Confirm2
    Enter Register Email    confirm2@gmail.com
    Enter Register Phone    0933333333

    Enter Register Password    kimcam17

    Click Register

    Sleep    2s

    Page Should Contain    Vui lòng nhập lại mật khẩu