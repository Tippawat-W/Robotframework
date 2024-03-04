*** keyword ***
click cart button
    common_function.click by element            ${cart_locator.menu_botton} 

verify number of product add to cart
    [Arguments]            ${number of product}
    ${number of product}=        Convert To String     ${number of product}
    ${cart_locator.number_of_product}=        String.Replace string     ${cart_locator.number_of_product}     {number_of_product}    ${number_of_product}
    common_function.check text should be               ${cart_locator.number_of_product}          ${number of product}

verify remove all number of product on cart
    [Arguments]            ${number of product}
    ${number of product}=        Convert To String     ${number of product}
    ${cart_locator.number_of_product}=         String.Replace string     ${cart_locator.number_of_product}     {number_of_product}    ${number_of_product}
    SeleniumLibrary.Element Should Not Be Visible              ${cart_locator.number_of_product} 