*** Keywords ***
Click Logout From System On Navbar
    Click Open Burger Menu
    Click Logout

Click Open Burger Menu
    Click By Element    ${burger_navbar_locator.menu_botton}

Click All Item Tap
    Click By Element    ${burger_navbar_locator.all_item_tap}

Click About Tap
    Click By Element    ${burger_navbar_locator.about_tap}

Click Logout
    Click By Element    ${burger_navbar_locator.logout_tap}

Click Reset App State
    Click By Element    ${burger_navbar_locator.reset_tap}