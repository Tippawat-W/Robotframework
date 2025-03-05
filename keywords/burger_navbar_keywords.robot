*** Keywords ***
Logout From System
    Click Open Burger Menu
    Click Logout

Click Open Burger Menu
    common_keywords.Click By Element    ${burger_navbar_locator.menu_botton}

Click All Item Tap
    common_keywords.Click By Element    ${burger_navbar_locator.all_item_tap}

Click About Tap
    common_keywords.Click By Element    ${burger_navbar_locator.about_tap}

Click Logout
    common_keywords.Click By Element    ${burger_navbar_locator.logout_tap}

Click Reset App State
    common_keywords.Click By Element    ${burger_navbar_locator.reset_tap}