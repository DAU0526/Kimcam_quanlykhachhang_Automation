*** Settings ***

Resource    ../resources/common_keywords.resource
Resource    ../resources/page_objects/LoginPage.resource
Resource    ../resources/page_objects/HomePage.resource


Suite Setup       Open Browser To Application
Suite Teardown    Close Application



*** Test Cases ***


TC07 Logout


    # Login trước
    Enter Email    kim@gmail.com

    Enter Password    kimcam17

    Click Login


    # Chờ trang home
    Sleep    3s


    # Logout
    Click Logout


   