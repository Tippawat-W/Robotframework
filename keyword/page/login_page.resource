*** keyword ***
input username id
    [Arguments]    ${id}
    SeleniumLibrary.Input Text           ${login_locator.username_id}         ${id}

input username password
    [Arguments]    ${password}
    SeleniumLibrary.Input Text           ${login_locator.username_password}         ${password}

click button login
    SeleniumLibrary.Click Element        ${login_locator.click_button_login}

login failed
    common_function.check text should be        ${login_locator.error_login}        Epic sadface: Username and password do not match any user in this service

require id
    common_function.check text should be         ${login_locator.error_login}        Epic sadface: Username is required

require password
    common_function.check text should be         ${login_locator.error_login}        Epic sadface: Password is required 
