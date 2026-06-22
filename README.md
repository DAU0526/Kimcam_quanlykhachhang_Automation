# CRM Customer Management - QA Automation Framework

**Author:** KimCam

---

# Project Overview

Automation Testing Framework cho hệ thống:

**CRM Customer Management System**

Framework được xây dựng để tự động kiểm thử Web Application bằng Robot Framework.

Mục tiêu:

- Automation UI Testing
- Functional Testing
- Regression Testing
- Form Validation Testing
- Generate Test Report
- Maintainable Test Automation Architecture


---

# Technology Stack

| Technology | Usage |
|-|-|
| Python 3.10+ | Programming Language |
| Robot Framework 7.x | Automation Framework |
| SeleniumLibrary | Web Automation |
| ChromeDriver | Browser Driver |
| YAML | Environment Configuration |
| Page Object Model | Test Design Pattern |


---

# Requirements


## Required Software

| Tool | Version |
|-|-|
| Python | 3.10+ |
| Google Chrome | Latest |
| Robot Framework | 7.x |


Check installation:


```bash
python --version

robot --version
```

---

# Installation


## Clone Repository


```bash
git clone https://github.com/DAU0526/Kimcam_quanlykhachhang_Automation.git
```


Go to project folder:


```bash
cd Kimcam_quanlykhachhang_Automation
```


---

# Create Virtual Environment


Windows:


```bash
python -m venv venv

venv\Scripts\activate
```


Linux / Mac:


```bash
python3 -m venv venv

source venv/bin/activate
```


---

# Install Dependencies


```bash
pip install -r requirements.txt
```


---

# Project Structure


```
Kimcam_quanlykhachhang_Automation

│
├── tests
│
│   ├── LoginTests.robot
│   ├── LogoutTests.robot
│   ├── RegisterTests.robot
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
│       ├── LoginPage.resource
│       ├── RegisterPage.resource
│       ├── HomePage.resource
│       └── CustomerPage.resource
│
│
├── locators
│
│   ├── LoginPageLocators.py
│   ├── RegisterPageLocators.py
│   ├── HomePageLocators.py
│   └── CustomerPageLocators.py
│
│
├── environment.variables.yml
│
├── requirements.txt
│
└── README.md

```


---

# Automation Architecture


```
Test Cases (.robot)

        |

        v

Common Keywords

        |

        v

Page Objects

        |

        v

Locators

        |

        v

CRM Application

```


---

# Test Coverage


# Authentication Testing


## Login Testing


File:

```
tests/LoginTests.robot
```


| ID | Test Case |
|-|-|
| TC01 | Login Success |
| TC02 | Wrong Password |
| TC03 | Wrong Email |
| TC04 | Empty Email |
| TC05 | Empty Password |
| TC06 | Invalid Format |
| TC07 | Logout After Login |



---

## Logout Testing


File:

```
tests/LogoutTests.robot
```


| ID | Test Case |
|-|-|
| TC01 | Logout Success |


---

## Register Testing


File:

```
tests/RegisterTests.robot
```


| ID | Test Case |
|-|-|
| TC01 | Register Success |
| TC02 | Duplicate Email |
| TC03 | Empty Name |
| TC04 | Empty Email |
| TC05 | Empty Password |
| TC06 | Weak Password |
| TC07 | Wrong Email Format |
| TC08 | Valid Phone |
| TC09 | Empty Phone |
| TC10 | Invalid Phone |
| TC11 | Password Not Match |
| TC12 | Empty Confirm Password |


---

# Customer Management Testing


## Create Customer


File:

```
tests/CustomerCreateTests.robot
```


| ID | Test Case |
|-|-|
| TC01 | Create Success |
| TC02 | Empty Name |
| TC03 | Empty Email |
| TC04 | Empty Phone |
| TC05 | Empty Address |
| TC06 | Status Contacted |
| TC07 | Status Potential |


---

## Search Customer


File:

```
tests/CustomerSearchTests.robot
```


| ID | Test Case |
|-|-|
| TC01 | Search Success |
| TC02 | Customer Not Found |
| TC03 | Empty Keyword |
| TC04 | Search By Email |
| TC05 | Search By Phone |
| TC06 | Special Character |
| TC07 | Partial Name |


---

## Update Customer


File:

```
tests/CustomerUpdateTests.robot
```


| ID | Test Case |
|-|-|
| TC01 | Update Success |
| TC02 | Empty Name |
| TC03 | Invalid Email |
| TC04 | Invalid Phone |
| TC05 | Same Data |
| TC06 | Multiple Update |


---

## Delete Customer


File:

```
tests/CustomerDeleteTests.robot
```


| ID | Test Case |
|-|-|
| TC01 | Delete Success |
| TC02 | Cancel Delete |


---

# Total Test Cases


```

Login          7
Logout         1
Register      12

Create Customer 7
Search Customer 7
Update Customer 6
Delete Customer 2


====================
TOTAL: 41 TESTS
====================

```


---

# Running Tests


## Run All Tests


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

## Run Customer Tests


```bash
robot -d results tests/Customer*.robot
```


---

# Test Report


Sau khi chạy:


```
results/

├── output.xml

├── log.html

└── report.html

```


Mở report:


Windows:

```bash
start results/report.html
```

hoặc


```bash
start results/log.html
```


---

# Page Object Model


## Locator Layer


Chứa:

- XPath
- CSS Selector


Example:


```python
LOGIN_BUTTON =
"xpath=//button"
```


---

## Page Object Layer


Chứa:

- Click Element
- Input Text
- Navigation
- Validation


Example:


```robot
Enter Email

Click Login

Verify Error Message
```


---

## Test Layer


Chỉ chứa:

- Test Scenario
- Expected Result


Example:


```robot
Login With Credentials

Verify Customer Found
```


---

# Environment Configuration


File:


```
environment.variables.yml
```


Example:


```yaml
BASE_URL: https://simple-crm-hcur.vercel.app/

BROWSER: chrome
```


---

# Troubleshooting


## Element Not Found


Nguyên nhân:

- Sai XPath
- Page load chậm


Fix:


```robot
Wait Until Element Is Visible
```


---

## Multiple Keyword Found


Nguyên nhân:

Trùng keyword giữa resource.


Fix:

Gọi full name:


```robot
LoginPage.Login With Credentials
```


---

## Browser Error


Kiểm tra:


```robot
Suite Setup
Suite Teardown
```


---

# Git Workflow


Check:

```bash
git status
```


Add:


```bash
git add .
```


Commit:


```bash
git commit -m "Update automation framework"
```


Push:


```bash
git push origin main
```


---

# Future Improvements


- Screenshot when test fail
- GitHub Actions CI/CD
- Allure Report
- Parallel Execution
- Test Data Driven
- API Testing Integration


---

# Author


KimCam

QA Automation Internship Project