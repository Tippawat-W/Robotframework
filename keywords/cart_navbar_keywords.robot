*** Keywords ***
Access To Cart Page
    Click Cart Button On Navbar
    cart_keywords.Verify Access To Cart Page Success

Click Cart Button On Navbar
    common_keywords.Click By Element    ${cart_navbar_locator.menu_botton}

Verify The Number Of Products Added To The Cart
    [Arguments]    ${number of product}
    ${number of product}    Convert To String    ${number of product}
    ${cart_navbar_locator.number_of_product}    String.Replace string    ${cart_navbar_locator.number_of_product}    {number_of_product}    ${number_of_product}
    common_keywords.Check Text Should Be    ${cart_navbar_locator.number_of_product}    ${number of product}

Verify Removed All Number Of Product On Cart
    [Arguments]    ${number of product}
    ${number of product}    Convert To String    ${number of product}
    ${cart_navbar_locator.number_of_product}    String.Replace string    ${cart_navbar_locator.number_of_product}    {number_of_product}    ${number_of_product}
    SeleniumLibrary.Element Should Not Be Visible    ${cart_navbar_locator.number_of_product}