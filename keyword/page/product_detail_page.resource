*** keyword ***
verify produect detail success
    [Arguments]             ${product_name}
    ${locator.product_url}=                  common_function.change product name     ${product_name}        ${locator.product_detail_name}
    common_function.check text should be     ${locator.product_url}                 ${product_name}

click back to products button
    common_function.click by element       ${locator.back_to_products_button}

add item to cart
    [Arguments]        ${product_name}
    ${locator.product_url}=                    common_function.change name to url       ${product_name}    ${locator.product_detail_add_button} 
    common_function.click by element       ${locator.product_url}

verify add to cart button change to remove correct
    [Arguments]        ${product_name}
    ${locator.product_url}=                common_function.change name to url     ${product_name}          ${locator.product_detail_remove_button}
    common_function.check text should be     ${locator.product_url}        Remove

remove item from cart
    [Arguments]         ${product_name}
    ${locator.product_url}=                common_function.change name to url     ${product_name}          ${locator.product_detail_remove_button}
    common_function.click by element         ${locator.product_url}

verify remove from cart button change to add correct
    [Arguments]        ${product_name}
    ${locator.product_url}=                  common_function.change name to url     ${product_name}        ${locator.product_detail_add_button}
    common_function.check text should be     ${locator.product_url}        Add to cart
