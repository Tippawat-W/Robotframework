*** keyword ***
Verify Product Detail Success
    [Arguments]             ${product_name}
    ${locator.product_url}=                  common_function.Change Product Name     ${product_name}        ${locator.product_detail_name}
    common_function.Check Text Should Be     ${locator.product_url}                 ${product_name}

Click Back To Products Button
    common_function.Click By Element       ${locator.back_to_products_button}

Add Item To Cart
    [Arguments]        ${product_name}
    ${locator.product_url}=                    common_function.Change Name To Url       ${product_name}    ${locator.product_detail_add_button} 
    common_function.Click By Element       ${locator.product_url}

Verify Add To Cart Button Change To Remove Correct
    [Arguments]        ${product_name}
    ${locator.product_url}=                common_function.Change Name To Url     ${product_name}          ${locator.product_detail_remove_button}
    common_function.Check Text Should Be     ${locator.product_url}        Remove

Remove Item From Cart
    [Arguments]         ${product_name}
    ${locator.product_url}=                common_function.Change Name To Url     ${product_name}          ${locator.product_detail_remove_button}
    common_function.Click By Element         ${locator.product_url}

Verify Remove From Cart Button Change To Add Correct
    [Arguments]        ${product_name}
    ${locator.product_url}=                  common_function.Change Name To Url     ${product_name}        ${locator.product_detail_add_button}
    common_function.Check Text Should Be     ${locator.product_url}        Add to cart
