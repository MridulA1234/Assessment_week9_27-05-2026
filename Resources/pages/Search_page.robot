*** Settings ***
Library    SeleniumLibrary
Library    ../../config/env_loader.py
Resource    ../../Locators/search_page_locators.robot

*** Keywords ***
Search House_Land
    [Documentation]    Searching for house/land
    Click Element    ${search_btn}
    Sleep    2s