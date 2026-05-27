*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/Pages/Invalid_Login_page.robot
Resource    ../../Resources/common_resources.robot

Suite Setup    Setup Application
Suite Teardown    Close Application

*** Test Cases ***
TC_AUTH_002 Login to MagicBricks
    [Documentation]    Logging in to the MagicBricks website with manual captcha verification
    [Tags]    functional
    Invalid Login Page
    Sleep    3s
    Log To Console    Login test case with invalid credential executed successfully and OTP not received