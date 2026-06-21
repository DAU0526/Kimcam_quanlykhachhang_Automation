*** Settings ***

Resource    ../resources/common_keywords.resource

Suite Setup       Open Browser And Login

Suite Teardown    Close Application



*** Test Cases ***


# ==================================================
# TC01 SEARCH CUSTOMER SUCCESS
# Tìm kiếm khách hàng theo tên tồn tại
# Expected: Hiển thị thông tin khách hàng
# ==================================================

TC01 Search Customer Success

    Go To    ${BASE_URL}

    Input Text    xpath=//input[@placeholder='Search customer...']    Cẩm

    Click Element    xpath=//button[text()='Search']

    Sleep    2s

    Page Should Contain    Cẩm



# ==================================================
# TC02 SEARCH CUSTOMER NOT FOUND
# Tìm kiếm khách hàng không tồn tại
# Expected: Không hiển thị khách hàng Cẩm
# ==================================================

TC02 Search Customer Not Found

    Go To    ${BASE_URL}

    Input Text    xpath=//input[@placeholder='Search customer...']    abcxyz999

    Click Element    xpath=//button[text()='Search']

    Sleep    2s

    Page Should Not Contain    Cẩm



# ==================================================
# TC03 SEARCH EMPTY KEYWORD
# Không nhập từ khóa tìm kiếm
# Expected: Hiển thị danh sách khách hàng
# ==================================================

TC03 Search Empty Keyword

    Go To    ${BASE_URL}

    Clear Element Text    xpath=//input[@placeholder='Search customer...']

    Click Element    xpath=//button[text()='Search']

    Sleep    2s

    Page Should Contain    Danh sách khách hàng



# ==================================================
# TC04 SEARCH BY EMAIL
# Tìm kiếm khách hàng bằng Email
# Expected: Hiển thị đúng Email khách hàng
# ==================================================

TC04 Search By Email

    Go To    ${BASE_URL}

    Input Text    xpath=//input[@placeholder='Search customer...']    cam@gmail.com

    Click Element    xpath=//button[text()='Search']

    Sleep    2s

    Page Should Contain    cam@gmail.com



# ==================================================
# TC05 SEARCH BY PHONE
# Tìm kiếm khách hàng bằng số điện thoại
# Expected: Hiển thị đúng số điện thoại
# ==================================================

TC05 Search By Phone

    Go To    ${BASE_URL}

    Input Text    xpath=//input[@placeholder='Search customer...']    0914101396

    Click Element    xpath=//button[text()='Search']

    Sleep    2s

    Page Should Contain    0914101396



# ==================================================
# TC06 SEARCH SPECIAL CHARACTER
# Tìm kiếm bằng ký tự đặc biệt
# Expected: Không hiển thị kết quả phù hợp
# ==================================================

TC06 Search Special Character

    Go To    ${BASE_URL}

    Input Text    xpath=//input[@placeholder='Search customer...']    @#$%

    Click Element    xpath=//button[text()='Search']

    Sleep    2s



# ==================================================
# TC07 SEARCH PARTIAL NAME
# Tìm kiếm theo một phần tên khách hàng
# Expected: Hiển thị khách hàng chứa từ khóa
# ==================================================

TC07 Search Partial Name

    Go To    ${BASE_URL}

    Input Text    xpath=//input[@placeholder='Search customer...']    tuan

    Click Element    xpath=//button[text()='Search']

    Sleep    2s

    Page Should Contain    tuan