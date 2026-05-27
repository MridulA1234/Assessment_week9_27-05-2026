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
TC_FLT_E2E Filter Functionality End to End
    [Documentation]    End to end testing of filter functionality
    [Tags]    E2E


    Login Page
    Sleep    3s

    Search House_Land    ## Searching for house/land
    Sleep    3s

    Filter By BHK    ## Filtering properties by BHK
    Sleep    3s

    Filter By Property Type    ## Filtering properties by type
    Sleep    3s

    Filter by Locality    ## Filtering properties by locality: For Plot/Land Jaipur Industrial Area is available, otherwise not
    Sleep    3s
    Filter by Buy_Rent    ## Filtering properties by buy/rent: For Plot/Land Rent is available, otherwise not
    Sleep    3s

    Clear Filter
    Sleep    3s