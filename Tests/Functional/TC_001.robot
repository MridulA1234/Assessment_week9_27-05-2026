*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/Pages/Login_page.robot
Resource    ../../Resources/common_resources.robot

Suite Setup    Setup Application
Suite Teardown    Close Application

*** Test Cases ***
TC_AUTH_001 Login to MagicBricks
    [Documentation]
    [Tags]    functional
    Login Page
    Sleep    3s
    Log To Console    Login test case executed successfully