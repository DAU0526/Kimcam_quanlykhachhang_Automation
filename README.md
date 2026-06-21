# CRM Customer Management - QA Automation Framework

**Author:** KimCam

---

# Project Overview

Automation Testing Framework cho hệ thống:

**CRM Customer Management System**

Framework sử dụng để tự động kiểm thử giao diện Web Application.

Mục tiêu:

- Automation UI Testing
- Kiểm thử chức năng CRM
- Validate form input
- Regression Testing
- Generate Test Report


---

# Technology Stack


| Technology | Usage |
|-|-|
| Python | Programming Language |
| Robot Framework | Automation Framework |
| SeleniumLibrary | Web Automation |
| ChromeDriver | Browser Driver |
| YAML | Environment Configuration |
| Page Object Model | Test Architecture |


---

# Requirements


| Tool | Version |
|-|-|
| Python | 3.10+ |
| Google Chrome | Latest |
| ChromeDriver | Match Chrome |
| Robot Framework | 7.x |


Check version:


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


Move to project:


```bash
cd Kimcam_quanlykhachhang_Automation
```


---

## Create Virtual Environment


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

## Install Libraries


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
│
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
├── README.md
│
└── results

```

---

# Automation Architecture


```
Test Cases

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


## Login


File:


```
tests/LoginTests.robot
```


Test Cases:


| ID | Description |
|-|-|
| TC01 | Login success |
| TC02 | Wrong password |
| TC03 | Wrong email |
| TC04 | Empty email |
| TC05 | Empty password |
| TC06 | Wrong password format |


---

## Logout


File:


```
tests/LogoutTests.robot
```


Test:


| ID | Description |
|-|-|
| TC07 | Logout after login |


---

## Register


File:


```
tests/RegisterTests.robot
```


Test Cases:


| ID | Description |
|-|-|
| TC01 | Register success |
| TC02 | Duplicate email |
| TC03 | Empty name |
| TC04 | Empty email |
| TC05 | Empty password |
| TC06 | Weak password |
| TC07 | Wrong email format |
| TC08 | Valid phone |
| TC09 | Empty phone |
| TC10 | Invalid phone |
| TC11 | Password mismatch |
| TC12 | Empty confirm password |


---

# Customer Management Testing


## Create Customer


File:


```
tests/CustomerCreateTests.robot
```


Coverage:


| ID | Description |
|-|-|
| TC01 | Create customer success |
| TC02 | Empty name |
| TC03 | Empty email |
| TC04 | Empty phone |
| TC05 | Empty address |
| TC06 | Status Contacted |
| TC07 | Status Potential |


---

## Search Customer


File:


```
tests/CustomerSearchTests.robot
```


Coverage:


| ID | Description |
|-|-|
| TC01 | Search by name |
| TC02 | Search no result |
| TC03 | Empty keyword |
| TC04 | Search by email |
| TC05 | Search by phone |
| TC06 | Special character |
| TC07 | Partial name |


---

## Update Customer


File:


```
tests/CustomerUpdateTests.robot
```


Coverage:


| ID | Description |
|-|-|
| TC01 | Update customer name success |


---

## Delete Customer


File:


```
tests/CustomerDeleteTests.robot
```


Coverage:


| ID | Description |
|-|-|
| TC01 | Delete customer success |
| TC02 | Cancel delete |
| TC03 | Delete multiple customers |


---

# Total Test Cases


```
Authentication

Login        6
Logout       1
Register    12


Customer

Create       7
Search       7
Update       1
Delete       3


=================
Total: 37 Tests
=================
```


---

# Running Tests


## Run All Tests


```bash
robot -d results tests
```


---

## Run Login Test


```bash
robot -d results tests/LoginTests.robot
```


---

## Run Register Test


```bash
robot -d results tests/RegisterTests.robot
```


---

## Run Customer Test


```bash
robot -d results tests/Customer*.robot
```


---

# Test Report


After execution:


```
results/

├── output.xml

├── log.html

└── report.html

```


Open report:


Windows:


```bash
start results/log.html
```


---

# Page Object Model


## Locator Layer


Contains:

- XPath
- CSS Selector


Example:


```python
LOGIN_BUTTON =
"xpath=//button"
```


---

## Page Object Layer


Contains:

- Click action
- Input action
- Navigation


Example:


```robot
Enter Email

Click Login

```


---

## Test Layer


Only contains:

- Test scenario
- Expected result


Example:


```robot
Enter Email

Enter Password

Click Login
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


Cause:

- Wrong XPath
- Page loading slow


Solution:


```robot
Wait Until Element Is Visible
```


---

## Keyword Not Found


Check resource:


```robot
Resource
../resources/common_keywords.resource
```


---

## Browser Not Open


Check:


```robot
Suite Setup
```


---

# Git Workflow


Check changes:


```bash
git status
```


Add:


```bash
git add .
```


Commit:


```bash
git commit -m "Update automation tests"
```


Push:


```bash
git push origin main
```


---

# Future Improvements


- Add Screenshot On Failure
- Add Selenium Explicit Wait
- Add GitHub Actions CI/CD
- Add Allure Report
- Add Parallel Execution
- Add Test Data Management


---

# Author


KimCam

QA Automation Internship Project