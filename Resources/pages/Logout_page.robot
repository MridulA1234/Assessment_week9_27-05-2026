*** Settings ***
Library    SeleniumLibrary
Library    ../../config/env_loader.py
Resource    ../../Locators/home_page_locators.robot

*** Keywords ***
Logout Page
    [Documentation]    Logging out of the MagicBricks website
    Mouse Over    xpath=//a[@class='mb-header__main__link js-menu-link normal-user']
    Sleep    1s
    Click Element    xpath=//a[text()='Sign Out']
    Sleep    2s