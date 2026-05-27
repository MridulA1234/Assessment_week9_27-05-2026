*** Settings ***
Library    SeleniumLibrary
Library    ../../config/env_loader.py
Resource    ../../Locators/filter_page_locators.robot

*** Keywords ***
Filter By BHK
    [Documentation]    Filtering properties by type
#    ${bhk_dropdown}=    Get Webelement    ${bhk_type}
    Click Element    ${bhk_type}
    Sleep    2s

    Click Element    xpath=//label[contains(text(),'1 BHK')]
    Sleep    2s
    
    Click Element    xpath=(//div[text()='Done'])[5]
    Sleep    2s

Filter By Property Type
    [Documentation]    Filtering properties by type
    Click Element    ${prop_type}
    Sleep    1s

    Click Element    xpath=//label[contains(text(),'Plot/Land')]
    Sleep    1s
    
Filter by Locality
    [Documentation]    Filtering properties by locality
    Click Element    ${locality}
    Sleep    1s

    Click Element    xpath=//label[contains(text(),'Jaipur Industrial Area')]
    Sleep    1s

    Click Element    xpath=(//div[text()='Done'])[2]
    Sleep    2s

Filter by Buy_Rent
    [Documentation]    Filtering properties by buy/rent
    Click Element    ${buy_rent_btn}
    Sleep    1s

#    ${rent}=    Get Webelement    xpath=//label[contains(text(),'Rent')]
#    Execute Javascript    arguments[0].click();    ${rent}
    Click Element    xpath=//label[contains(text(),'Rent')]
    Sleep    1s
    Click Element    xpath=//div[text()='Yes']
    Sleep    1s

Clear Filter
    [Documentation]    Clearing applied filters
    Click Element    xpath=(//span[@class='filter__component__clear'])[1]
    Sleep    2s