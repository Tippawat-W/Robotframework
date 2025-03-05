*** Variable ***
${login_locator.username_id}    id=user-name
${login_locator.username_password}    id=password
${login_locator.click_button_login}    id=login-button
${login_locator.error_login}    xpath=//div[@class="login-box"]//h3[@data-test="error"]
${login_locator.success_login}    xpath=//div/span[@class="title" and contains(text(),"Products")]
${login_locator.home_page}    xpath=//div[@class="login_container"]/div[text() = 'Swag Labs']