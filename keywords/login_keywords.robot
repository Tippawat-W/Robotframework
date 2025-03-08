*** Keywords ***
Login To The System With '${id}' And '${password}'
    Input Username Id    ${id}
    login_keywords.Input Username Password    ${password}

Input Username Id
    [Arguments]    ${id}
    common_keywords.Input Data    ${login_locator.username_id}    ${id}

Input Username Password
    [Arguments]    ${password}
    common_keywords.Input Data    ${login_locator.username_password}    ${password}

Click Login Button On Landing Page
    common_keywords.Click By Element    ${login_locator.click_button_login}

Verify That System Login has Failed
    common_keywords.Check Text Should Be    ${login_locator.error_login}    Epic sadface: Username and password do not match any user in this service

Verify That System Require Username
    common_keywords.Check Text Should Be    ${login_locator.error_login}    Epic sadface: Username is required

Verify That System Require Password
    common_keywords.Check Text Should Be    ${login_locator.error_login}    Epic sadface: Password is required

Verify That System Logout has Success
    common_keywords.Check Text Should Be    ${login_locator.home_page}    Swag Labs