*** keyword ***
Verify Product Detail Success
    [Arguments]             ${product_name}
    ${locator.product_url}=                  common_function.Change Product Name     ${product_name}        ${locator.product_detail_name}
    common_function.Check Text Should Be     ${locator.product_url}                 ${product_name}

Click Back To Products Button
    common_function.Click By Element       ${locator.back_to_products_button}

Add Item To Cart
    common_function.Click By Element       ${locator.product_detail_add_button} 

Verify Add To Cart Button Change To Remove Correct
    common_function.Check Text Should Be    ${locator.product_detail_remove_button}         Remove

Remove Item From Cart
    common_function.Click By Element         ${locator.product_detail_remove_button}  

Verify Remove From Cart Button Change To Add Correct
    common_function.Check Text Should Be     ${locator.product_detail_add_button}         Add to cart
