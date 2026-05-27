*** Settings ***
Library  SeleniumLibrary
Library  ../config/env_loader.py

*** Variables ***
${BROWSER}  chrome
${ENV}  qa

*** Keywords ***
Load Environment
    Load Env    ${ENV}
    ${url}=  Get Env    baseurl
    ${phone_no}=  Get Env    ph_no
    ${email}=  Get Env    user_email
    ${pwd}=  Get Env    user_password

    Set Global Variable    ${BASE_URL}  ${url}
    Set Global Variable    ${PHONE_NO}  ${phone_no}
    Set Global Variable    ${USER_EMAIL}  ${email}
    Set Global Variable    ${USER_PWD}  ${pwd}

Setup Application
    [Documentation]  Load environment and open application
    Load Environment
    Open Application

Open Application
    [Documentation]  Opens the application
    Open Browser  ${BASE_URL}  ${BROWSER}
    Maximize Browser Window

Close Application
    [Documentation]  Closing the application
    Close All Browsers