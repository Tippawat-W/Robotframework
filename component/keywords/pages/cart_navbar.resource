*** Keywords ***
Click Cart Button On Navbar
    common_function.Click By Element            ${cart_locator.menu_botton} 

Verify Number Of Product Add To Cart
    [Arguments]            ${number of product}
    ${number of product}=        Convert To String     ${number of product}
    ${cart_locator.number_of_product}=        String.Replace string     ${cart_locator.number_of_product}     {number_of_product}    ${number_of_product}
    common_function.Check Text Should Be               ${cart_locator.number_of_product}          ${number of product}

Verify Remove All Number Of Product On Cart
    [Arguments]            ${number of product}
    ${number of product}=        Convert To String     ${number of product}
    ${cart_locator.number_of_product}=         String.Replace string     ${cart_locator.number_of_product}     {number_of_product}    ${number_of_product}
    SeleniumLibrary.Element Should Not Be Visible              ${cart_locator.number_of_product} 