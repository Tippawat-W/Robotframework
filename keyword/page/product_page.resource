*** keyword ***
add item to cart
    [Arguments]        ${product_name}
    ${locator.product_url}=                    common_function.change name to url       ${product_name}        ${locator.add_to_cart_item}
    common_function.click by element       ${locator.product_url}

verify add to cart button change to remove correct
    [Arguments]        ${product_name}
    ${locator.product_url}=                common_function.change name to url     ${product_name}        ${locator.remove_product_on_cart}
    common_function.check text should be     ${locator.product_url}        Remove

remove item from cart
    [Arguments]         ${product_name}
    ${locator.product_url}=                common_function.change name to url     ${product_name}        ${locator.remove_product_on_cart}
    common_function.click by element         ${locator.product_url}

verify remove from cart button change to add correct
    [Arguments]        ${product_name}
    ${locator.product_url}=                  common_function.change name to url     ${product_name}        ${locator.add_to_cart_item}
    common_function.check text should be     ${locator.product_url}        Add to cart

click cart button
    common_function.click by element         ${locator.cart_button}

verify access to product page success
    common_function.check text should be     ${locator.header}        Products