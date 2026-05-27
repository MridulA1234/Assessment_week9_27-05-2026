*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/Pages/Login_page.robot
Resource    ../../Resources/Pages/Logout_page.robot
Resource    ../../Resources/common_resources.robot

Suite Setup    Setup Application
Suite Teardown    Close Application

*** Test Cases ***
TC_AUTH_003 Logout to MagicBricks
    [Documentation]    End to End test case for logging out of the MagicBricks website after successful login
    [Tags]    E2E

    Login Page
    Sleep    3s
    Logout Page
    Sleep    3s
    Log To Console    End to End test case for logging out of the MagicBricks website after successful login executed successfully