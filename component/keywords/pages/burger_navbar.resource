*** Keywords ***
Logout From System
    Click Open Burger Menu
    Click Logout

Click Open Burger Menu
    common_function.Click By Element        ${burger_locator.menu_botton}

Click All Item Tap
    common_function.Click By Element        ${burger_locator.all_item_tap}

Click About Tap
    common_function.Click By Element        ${burger_locator.about_tap}

Click Logout
    common_function.Click By Element        ${burger_locator.logout_tap}

Click Reset App State
    common_function.Click By Element        ${burger_locator.reset_tap}
