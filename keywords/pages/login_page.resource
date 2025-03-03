*** Keywords ***
Login To System is '${id}' And '${password}'
    Input Username Id        ${id}
    login_page.Input Username Password        ${password}

Login To System
    [Arguments]    ${id}    ${password}
    Input Username Id        ${id}
    Input Username Password        ${password}
    Click Login Button

Input Username Id
    [Arguments]    ${id}
    SeleniumLibrary.Input Text           ${login_locator.username_id}         ${id}

Input Username Password
    [Arguments]    ${password}
    SeleniumLibrary.Input Text           ${login_locator.username_password}         ${password}

Click Login Button
    common_function.Click By Element        ${login_locator.click_button_login}

Verify That System Is Login Failed
    common_function.Check Text Should Be        ${login_locator.error_login}        Epic sadface: Username and password do not match any user in this service

Verify That System Is Require Id
    common_function.Check Text Should Be         ${login_locator.error_login}        Epic sadface: Username is required

Verify That System Is Require Password
    common_function.Check Text Should Be         ${login_locator.error_login}        Epic sadface: Password is required 

Verify That System Is Logout Success
    common_function.Check Text Should Be          ${login_locator.home_page}                  Swag Labs
    