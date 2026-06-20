*** Settings ***

Library    SeleniumLibrary

Variables    ../locators/HomePageLocators.py



*** Keywords ***


# Click nút Đăng xuất
Click Logout

    # Chờ nút logout hiển thị
    Wait Until Element Is Visible    ${LOGOUT_BUTTON}    10s


    # Click logout
    Click Element    ${LOGOUT_BUTTON}
    Sleep    2s    