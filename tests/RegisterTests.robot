*** Settings ***

Resource    ../resources/common_keywords.resource
Resource    ../resources/page_objects/RegisterPage.resource


Suite Setup       Open Browser To Application
Suite Teardown    Close Application

Test Setup        Go To Login Page



*** Test Cases ***


TC01 Register Success
    [Tags]    Positive    Register

    Click Register Page

    Register With Information
    ...    ${REGISTER_NAME}
    ...    nguyenvana1@gmail.com
    ...    ${REGISTER_PHONE}
    ...    ${REGISTER_PASSWORD}
    ...    ${REGISTER_PASSWORD}

    Run Keyword And Ignore Error
    ...    Handle Alert
    ...    accept



TC02 Register Duplicate Email
    [Tags]    Negative    Register

    Click Register Page

    Register With Information
    ...    ${REGISTER_NAME}
    ...    ${DUPLICATE_EMAIL}
    ...    ${REGISTER_PHONE}
    ...    ${REGISTER_PASSWORD}
    ...    ${REGISTER_PASSWORD}

    common_keywords.Verify Error Message
    ...    Email đã tồn tại



TC03 Register Empty Name
    [Tags]    Negative    Register

    Click Register Page

    Enter Register Email
    ...    test01@gmail.com

    Enter Register Phone
    ...    ${REGISTER_PHONE}

    Enter Register Password
    ...    ${REGISTER_PASSWORD}

    Enter Confirm Password
    ...    ${REGISTER_PASSWORD}

    Click Register

    Wait Until Page Contains
    ...    tên
    ...    10s



TC04 Register Empty Email
    [Tags]    Negative    Register

    Click Register Page

    Enter Register Name
    ...    ${REGISTER_NAME}

    Enter Register Phone
    ...    ${REGISTER_PHONE}

    Enter Register Password
    ...    ${REGISTER_PASSWORD}

    Enter Confirm Password
    ...    ${REGISTER_PASSWORD}

    Click Register

    Wait Until Page Contains
    ...    Vui lòng nhập email
    ...    10s



TC05 Register Empty Password
    [Tags]    Negative    Register

    Click Register Page

    Enter Register Name
    ...    ${REGISTER_NAME}

    Enter Register Email
    ...    test02@gmail.com

    Enter Register Phone
    ...    ${REGISTER_PHONE}

    Enter Confirm Password
    ...    ${REGISTER_PASSWORD}

    Click Register

    Wait Until Page Contains
    ...    Vui lòng nhập mật khẩu
    ...    10s



TC06 Register Weak Password
    [Tags]    Negative    Register

    Click Register Page

    Register With Information
    ...    ${REGISTER_NAME}
    ...    test03@gmail.com
    ...    ${REGISTER_PHONE}
    ...    123
    ...    123


    common_keywords.Verify Error Message
    ...    Mật khẩu



TC07 Register Wrong Email
    [Tags]    Negative    Register

    Click Register Page

    Register With Information
    ...    ${REGISTER_NAME}
    ...    abc
    ...    ${REGISTER_PHONE}
    ...    ${REGISTER_PASSWORD}
    ...    ${REGISTER_PASSWORD}


    common_keywords.Verify Error Message
    ...    email



TC08 Register Valid Phone
    [Tags]    Positive    Register

    Click Register Page

    Register With Information
    ...    ${REGISTER_NAME}
    ...    phone1@gmail.com
    ...    ${REGISTER_PHONE}
    ...    ${REGISTER_PASSWORD}
    ...    ${REGISTER_PASSWORD}

    Run Keyword And Ignore Error
    ...    Handle Alert
    ...    accept



TC09 Empty Phone
    [Tags]    Negative    Register

    Click Register Page


    Enter Register Name
    ...    ${REGISTER_NAME}

    Enter Register Email
    ...    phone101@gmail.com

    Enter Register Password
    ...    ${REGISTER_PASSWORD}

    Enter Confirm Password
    ...    ${REGISTER_PASSWORD}


    Click Register


    Wait Until Page Contains
    ...    Vui lòng nhập số điện thoại
    ...    10s



TC10 Invalid Phone
    [Tags]    Negative    Register

    Click Register Page


    Enter Register Name
    ...    ${REGISTER_NAME}

    Enter Register Email
    ...    phone102@gmail.com

    Enter Register Phone
    ...    abc

    Enter Register Password
    ...    ${REGISTER_PASSWORD}

    Enter Confirm Password
    ...    ${REGISTER_PASSWORD}


    Click Register


    Wait Until Page Contains
    ...    số điện thoại
    ...    10s



TC11 Password Not Match
    [Tags]    Negative    Register

    Click Register Page


    Register With Information
    ...    ${REGISTER_NAME}
    ...    confirm@gmail.com
    ...    0922222222
    ...    ${REGISTER_PASSWORD}
    ...    12345678


    common_keywords.Verify Error Message
    ...    Mật khẩu không khớp



TC12 Empty Confirm Password
    [Tags]    Negative    Register

    Click Register Page


    Enter Register Name
    ...    ${REGISTER_NAME}

    Enter Register Email
    ...    confirm2@gmail.com

    Enter Register Phone
    ...    ${REGISTER_PHONE}

    Enter Register Password
    ...    ${REGISTER_PASSWORD}


    Click Register


    Wait Until Page Contains
    ...    Vui lòng nhập lại mật khẩu
    ...    10s