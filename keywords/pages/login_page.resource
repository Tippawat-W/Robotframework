*** Keywords ***
Input Username Id
    [Arguments]    ${id}
    SeleniumLibrary.Input Text           ${login_locator.username_id}         ${id}

Input Username Password
    [Arguments]    ${password}
    SeleniumLibrary.Input Text           ${login_locator.username_password}         ${password}

Click Button Login
    SeleniumLibrary.Click Element        ${login_locator.click_button_login}

Login Failed
    common_function.Check Text Should Be        ${login_locator.error_login}        Epic sadface: Username and password do not match any user in this service

Require Id
    common_function.Check Text Should Be         ${login_locator.error_login}        Epic sadface: Username is required

Require Password
    common_function.Check Text Should Be         ${login_locator.error_login}        Epic sadface: Password is required 

Login Out Success
    common_function.Check Text Should Be          ${login_locator.home_page}                  Swag Labs
    