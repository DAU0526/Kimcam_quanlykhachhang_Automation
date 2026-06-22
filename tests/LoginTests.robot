*** Settings ***

Resource    ../resources/common_keywords.resource
Resource    ../resources/page_objects/LoginPage.resource
Resource    ../resources/page_objects/HomePage.resource


Suite Setup       Open Browser To Application
Suite Teardown    Close Application

Test Setup        Go To Login Page



*** Test Cases ***


TC01 Login Success

    [Tags]    Positive    Login


    LoginPage.Login With Credentials
    ...    ${VALID_EMAIL}
    ...    ${VALID_PASSWORD}


    HomePage.Verify Logout Button Visible


    HomePage.Click Logout





TC02 Login Wrong Password

    [Tags]    Negative    Login


    LoginPage.Login With Credentials
    ...    ${VALID_EMAIL}
    ...    ${INVALID_PASSWORD}


    LoginPage.Verify Error Message
    ...    Sai mật khẩu





TC03 Login Wrong Email

    [Tags]    Negative    Login


    LoginPage.Login With Credentials
    ...    ${INVALID_EMAIL}
    ...    ${VALID_PASSWORD}


    LoginPage.Verify Error Message
    ...    Sai email





TC04 Login Empty Email

    [Tags]    Negative    Login


    LoginPage.Enter Password
    ...    ${VALID_PASSWORD}


    LoginPage.Click Login


    Page Should Contain
    ...    Vui lòng nhập email





TC05 Login Empty Password

    [Tags]    Negative    Login


    LoginPage.Enter Email
    ...    ${VALID_EMAIL}


    LoginPage.Click Login


    Page Should Contain
    ...    Vui lòng nhập mật khẩu





TC06 Login Wrong Format

    [Tags]    Negative    Login


    LoginPage.Login With Credentials
    ...    ${VALID_EMAIL}
    ...    kimc am17


    LoginPage.Verify Error Message
    ...    Sai mật khẩu





TC07 Logout After Login

    [Tags]    Positive    Logout


    LoginPage.Login With Credentials
    ...    ${VALID_EMAIL}
    ...    ${VALID_PASSWORD}


    HomePage.Verify Logout Button Visible


    HomePage.Click Logout


    Wait Until Element Is Visible
    ...    xpath=//input[@type='email']
    ...    10s