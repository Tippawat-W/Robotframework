*** Keywords ***
Login To System is '${id}' And '${password}'
    Input Username Id    ${id}
    login_keywords.Input Username Password    ${password}

Input Username Id
    [Arguments]    ${id}
    SeleniumLibrary.Input Text    ${login_locator.username_id}    ${id}

Input Username Password
    [Arguments]    ${password}
    SeleniumLibrary.Input Text    ${login_locator.username_password}    ${password}

Click Login Button
    common_keywords.Click By Element    ${login_locator.click_button_login}

Verify That System Login has Failed
    common_keywords.Check Text Should Be    ${login_locator.error_login}    Epic sadface: Username and password do not match any user in this service

Verify That System Require Username
    common_keywords.Check Text Should Be    ${login_locator.error_login}    Epic sadface: Username is required

Verify That System Require Password
    common_keywords.Check Text Should Be    ${login_locator.error_login}    Epic sadface: Password is required

Verify That System Logout has Success
    common_keywords.Check Text Should Be    ${login_locator.home_page}    Swag Labs