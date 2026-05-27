*** Settings ***
Library    SeleniumLibrary
Library    ../../config/env_loader.py
Resource    ../../Resources/Pages/Login_page.robot
Resource    ../../Resources/Pages/Search_page.robot
Resource    ../../Resources/Pages/Filter_page.robot
Resource    ../../Resources/common_resources.robot

Suite Setup    Setup Application
Suite Teardown    Close Application

*** Test Cases ***
TC_FLT_001 Filter by BHK
    [Documentation]    Filtering properties by BHK
    [Tags]    functional
    Search House_Land    ## Searching for house/land
    Sleep    3s
    Filter By BHK    ## Filtering properties by BHK
    Sleep    3s

TC_FLT_002 Filter by Property Type
    [Documentation]    Filtering properties by type
    [Tags]    functional
    Search House_Land    ## Searching for house/land
    Sleep    3s
    Filter By Property Type    ## Filtering properties by type
    Sleep    3s
    
TC_FLT_003 Filter by Locality
    [Documentation]    Filtering properties by locality
    [Tags]    functional
    Search House_Land    ## Searching for house/land
    Sleep    3s
    Filter By Property Type    ## Filtering properties by type
    Sleep    3s
    Filter by Locality
    Sleep    3s

TC_FLT_004 Filter by Buy/Rent
    [Documentation]    Filtering properties by buy/rent
    [Tags]    functional
    Search House_Land
    Sleep    3s
    Filter by Buy_Rent
    Sleep    3s
    Clear Filter
    Sleep    3s
