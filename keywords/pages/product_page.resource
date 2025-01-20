*** Keywords ***
Add Item To Cart
    [Arguments]        ${product_name}
    ${locator.product_url}=                    common_function.Change Name To Url       ${product_name}        ${locator.add_to_cart_item}
    common_function.Click By Element       ${locator.product_url}

Verify Add To Cart Button Change To Remove Correct
    [Arguments]        ${product_name}
    ${locator.product_url}=                common_function.Change Name To Url     ${product_name}        ${locator.remove_product_on_cart}
    common_function.Check Text Should Be     ${locator.product_url}        Remove

Remove Item From Cart
    [Arguments]         ${product_name}
    ${locator.product_url}=                common_function.Change Name To Url     ${product_name}        ${locator.remove_product_on_cart}
    common_function.Click By Element         ${locator.product_url}

Verify Remove From Cart Button Change To Add Correct
    [Arguments]        ${product_name}
    ${locator.product_url}=                  common_function.Change Name To Url     ${product_name}        ${locator.add_to_cart_item}
    common_function.Check Text Should Be     ${locator.product_url}        Add to cart

Click Cart Button
    common_function.Click By Element         ${locator.cart_button}

Click Product Name
    [Arguments]        ${product_name}
    ${locator.product_url}=                  common_function.Change Product Name     ${product_name}        ${locator.product_name}
    common_function.Click By Element         ${locator.product_url}

Click Product Image
    [Arguments]        ${product_name}
    ${locator.product_url}=                  common_function.Change Product Name     ${product_name}        ${locator.product_image}
    common_function.Click By Element         ${locator.product_url}

Verify Access To Product Page Success
    common_function.Check Text Should Be     ${locator.header}        Products