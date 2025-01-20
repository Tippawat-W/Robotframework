*** Keywords ***
Click Checkout Button
        common_function.Click By Element         ${cart_locator.checkout_button}

Verify Access To Cart Page Success
        common_function.Check Text Should Be     ${cart_locator.header}        Your Cart

Verify Display Product To Cart Page Success
        [Arguments]    ${product_name}
        ${locator.product}=               common_function.Change Product Name       ${product_name}     ${cart_locator.product_name} 
        common_function.Check Text Should Be      ${locator.product}            ${product_name}

Click Product Name
        [Arguments]        ${product_name}
        ${locator.product_url}=                  common_function.Change Product Name     ${product_name}        ${cart_locator.product_name}
        common_function.Click By Element         ${locator.product_url}

Click Continue Button
        common_function.Click By Element         ${cart_locator.continue_shop_button} 

Click Remove Button
        [Arguments]    ${product_name}
        ${locator.product}=               common_function.Change Name To Url            ${product_name}     ${cart_locator.remove_button} 
        common_function.Click By Element         ${locator.product}

Verify Remove Product Success
        [Arguments]    ${product_name}
        ${locator.product}=               common_function.Change Name To Url       ${product_name}     ${cart_locator.remove_button} 
        SeleniumLibrary.Element Should Not Be Visible              ${locator.product}