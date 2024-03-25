*** keyword ***
click checkout button
        common_function.click by element         ${cart_locator.checkout_button}

verify access to cart page success
        common_function.check text should be     ${cart_locator.header}        Your Cart

verify display product to cart page success
        [Arguments]    ${product_name}
        ${locator.product}=               common_function.change product name       ${product_name}     ${cart_locator.product_name} 
        common_function.check text should be      ${locator.product}            ${product_name}

click product name
        [Arguments]        ${product_name}
        ${locator.product_url}=                  common_function.change product name     ${product_name}        ${cart_locator.product_name}
        common_function.click by element         ${locator.product_url}

click continue button
        common_function.click by element         ${cart_locator.continue_shop_button} 

click remove button
        [Arguments]    ${product_name}
        ${locator.product}=               common_function.change name to url            ${product_name}     ${cart_locator.remove_button} 
        common_function.click by element         ${locator.product}

verify remove product success
        [Arguments]    ${product_name}
        ${locator.product}=               common_function.change name to url       ${product_name}     ${cart_locator.remove_button} 
        SeleniumLibrary.Element Should Not Be Visible              ${locator.product}