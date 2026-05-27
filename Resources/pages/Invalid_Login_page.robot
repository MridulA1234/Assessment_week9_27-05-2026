*** Settings ***
Library    SeleniumLibrary
Library    ../../config/env_loader.py
Resource    ../../Locators/home_page_locators.robot

*** Keywords ***
Invalid Login Page
    [Documentation]    Loging in to the MagicBricks website with invalid credentials
    Mouse Over    ${login_button}
    Sleep    1s
    Click Element    xpath=//a[text()='Login/Sign Up']
    Sleep    2s

    # Switch to the newly opened tab
    Switch To New Tab

    # Wait a moment for the new tab to fully load
    Sleep    2s

    # Wait for the phone input field to be visible
    Wait Until Element Is Visible    xpath=//input[@id='emailOrMobile']    15s

    Execute Javascript
    ...    var el = document.getElementById('emailOrMobile');
    ...    el.value = '9831478890';
    ...    el.dispatchEvent(new Event('input', { bubbles: true }));
    ...    el.dispatchEvent(new Event('change', { bubbles: true }));

    Sleep    25s
    Click Element    xpath=//button[text()='Next']
    Sleep    25s
    Log To Console    Login invalid, OTP not received

Switch To New Tab
    [Documentation]    Switch to newly opened tab
    Sleep    1s
    ${window_handles}=    Get Window Handles
    ${num_windows}=    Get Length    ${window_handles}
    Log To Console    Number of tabs: ${num_windows}

    # If more than one tab exists, switch to the latest tab
    Run Keyword If    ${num_windows} > 1    Switch Window    ${window_handles}[-1]
    Log To Console    Successfully switched to new tab