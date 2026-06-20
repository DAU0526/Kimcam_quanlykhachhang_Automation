# CRM Customer Management - QA Automation Framework

**Author:** KimCam  

---

#  Project Overview

Framework kiểm thử tự động cho hệ thống:

**CRM Customer Management System**

Framework được xây dựng theo mô hình:

- Robot Framework
- SeleniumLibrary
- Page Object Model (POM)
- Python


Mục tiêu:

- Tự động kiểm thử giao diện web
- Kiểm tra các chức năng CRM
- Tạo bộ test regression
- Sinh báo cáo test tự động


---

# Technology Stack


| Technology | Usage |
|---|---|
| Python | Programming language |
| Robot Framework | Test automation framework |
| SeleniumLibrary | Browser automation |
| ChromeDriver | WebDriver |
| YAML | Environment configuration |
| POM | Test architecture |


---

# System Requirements


| Tool | Version |
|-|-|
| Python | 3.10+ |
| Chrome | 120+ |
| ChromeDriver | Match Chrome version |
| pip | 23+ |
| Robot Framework | 7.x |


---

# Installation


## 1. Clone project


```bash
git clone <https://github.com/DAU0526/Kimcam_quanlykhachhang_Automation.git>

```


---

## 2. Create Virtual Environment


Windows:


```bash
python -m venv venv
```


Activate:


```bash
venv\Scripts\activate
```



Linux / Mac:


```bash
source venv/bin/activate
```


---

## 3. Install dependencies


```bash
pip install -r requirements.txt
```


Check:


```bash
robot --version
```


---

#  Project Structure


```
kimcam_quanlykhachhang
│
├── tests
│
│   ├── LoginTests.robot
│   ├── LogoutTests.robot
│   ├── RegisterTests.robot
│   │
│   ├── CustomerCreateTests.robot
│   ├── CustomerSearchTests.robot
│   ├── CustomerUpdateTests.robot
│   └── CustomerDeleteTests.robot
│
│
├── resources
│
│   ├── common_keywords.resource
│   │
│   └── page_objects
│       │
│       ├── HomePage.resource
│       ├── LoginPage.resource
│       ├── RegisterPage.resource
│       └── CustomerPage.resource
│
│
├── locators
│
│   ├── HomePageLocators.py
│   ├── LoginPageLocators.py
│   ├── RegisterPageLocators.py
│   └── CustomerPageLocators.py
│
│
├── results
│
│   ├── output.xml
│   ├── log.html
│   └── report.html
│
│
├── environment.variables.yml
│
├── requirements.txt
│
└── README.md

```


---

#  Test Coverage


##  Authentication


## Login Test


File:

```
tests/LoginTests.robot
```


Test cases:


| Test Case | Description |
|-|-|
| TC01 | Login success |
| TC02 | Wrong password |
| TC03 | Wrong email |
| TC04 | Empty email |
| TC05 | Empty password |
| TC06 | Invalid email format |
| TC07 | Logout after login |


---

## Register Test


File:

```
tests/RegisterTests.robot
```


Test cases:


| Test Case | Description |
|-|-|
| TC01 | Register success |
| TC02 | Duplicate email |
| TC03 | Empty name |
| TC04 | Empty email |
| TC05 | Empty password |
| TC06 | Weak password |
| TC07 | Invalid email |
| TC08 | Valid phone |
| TC09 | Empty phone |
| TC10 | Invalid phone |
| TC11 | Password not match |
| TC12 | Empty confirm password |


---

#  Home Page Testing


File:

```
resources/page_objects/HomePage.resource
```


Home Page kiểm thử:


- Hiển thị Dashboard
- Hiển thị menu
- Điều hướng Customer
- Logout
- Kiểm tra trạng thái đăng nhập


Ví dụ:


```robot
Click Customer Menu

Click Logout

Verify Dashboard
```


---

#  Customer Management


## Create Customer


File:


```
tests/CustomerCreateTests.robot
```


Test:


- Add customer success
- Empty name
- Empty email
- Empty phone
- Invalid email
- Invalid phone


---

## Search Customer


File:


```
tests/CustomerSearchTests.robot
```


Test:


- Search existing customer
- Search no result


---

## Update Customer


File:


```
tests/CustomerUpdateTests.robot
```


Test:


- Update customer information


---

## Delete Customer


File:


```
tests/CustomerDeleteTests.robot
```


Test:


- Delete customer


---

#  Running Tests


## Run all tests


```bash
robot -d results tests
```


---

## Run Login


```bash
robot -d results tests/LoginTests.robot
```


---

## Run Register


```bash
robot -d results tests/RegisterTests.robot
```


---

## Run Customer


```bash
robot -d results tests/CustomerCreateTests.robot
```


---

#  Test Report


Sau khi chạy:


```
results/

output.xml

log.html

report.html

```


Mở report:


Windows:


```bash
start results/log.html
```


---

#  Framework Architecture


```
Test Case

    |

    v

Common Keywords

    |

    v

Page Objects

(HomePage
 LoginPage
 RegisterPage
 CustomerPage)

    |

    v

Locators

    |

    v

CRM Application

```


---

#  Coding Convention


## Locator Layer


Chỉ chứa:


- XPath
- CSS Selector


Ví dụ:


```python
LOGIN_BUTTON = "xpath=//button"
```


Không chứa logic.


---

## Page Object Layer


Chứa:


- Click
- Input
- Navigation


Ví dụ:


```robot
Enter Email

Click Login

```


---

## Test Layer


Chỉ gọi keyword:


Ví dụ:


```robot
Enter Email

Enter Password

Click Login
```


Không viết XPath trực tiếp.


---

#  Environment Configuration


File:


```
environment.variables.yml
```


Ví dụ:


```yaml
BASE_URL: https://simple-crm-hcur.vercel.app/

BROWSER: chrome


VALID_EMAIL: kim@gmail.com

VALID_PASSWORD: kimcam17
```


---

# ❗ Troubleshooting


## Element not found


Nguyên nhân:


- XPath sai
- Page chưa load


Fix:


```robot
Wait Until Element Is Visible
```


---

## No keyword found


Kiểm tra Resource:


```robot
Resource
../resources/common_keywords.resource
```


---

## No browser is open


Kiểm tra:


```robot
Suite Setup
Open Browser To Application
```


---

# 📈 Current Automation Status


Authentication:

```
Login       PASS

Register    PASS

Logout      PASS
```


Customer:

```
Create

Search

Update

Delete
```


---

# Author
KimCam

QA Automation Internship Project
