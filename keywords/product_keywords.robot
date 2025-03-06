*** Keywords ***
Add '${product_name}' To Cart From Product List Page
    FOR    ${product_name}    IN  @{product_name.values()}
        Add Item To Cart    ${product_name}
        Verify Add ${product_name} Then Add Button Change To Remove Button
        ${number of product}    Convert To Integer    ${number of product}
        ${number of product}    Evaluate    ${number of product} + 1
        cart_navbar_keywords.Verify The Number Of Products Added To The Cart    ${number of product}
    END
    Set Test Variable    ${number of product}    ${number of product}

Remove Product Out Of Cart
    [Arguments]    ${product_name}
    FOR    ${product_name}    IN  @{product_name.values()}
        Remove Item From Cart    ${product_name}
        Verify Remove '${product_name}' From Cart Remove Button Change To Add Button
        ${number of product}    Convert To Integer    ${number of product}
        ${number of product}    Evaluate    ${number of product} - 1
        Run Keyword If    ${number of product} != 0    cart_navbar_keywords.Verify The Number Of Products Added To The Cart    ${number of product}
        ...    ELSE    cart_navbar_keywords.Verify Removed All Number Of Product On Cart    ${number of product}
    END

Access To Detail Page By '${product_name}'
    Click Product Name    ${product_name}
    product_detail_keywords.Verify '${product_name}' Detail Success

Access To Detail Page By '${product_name}' Image
    Click Product Image    ${product_name}
    product_detail_keywords.Verify '${product_name}' Detail Success

Add Item To Cart
    [Arguments]    ${product_name}
    ${locator.product_url}    common_keywords.Change Name To Url    ${product_name}    ${locator.add_to_cart_item}
    common_keywords.Click By Element    ${locator.product_url}

Verify Add ${product_name} Then Add Button Change To Remove Button
    ${locator.product_url}    common_keywords.Change Name To Url    ${product_name}    ${locator.remove_product_on_cart}
    common_keywords.Check Text Should Be    ${locator.product_url}    Remove

Remove Item From Cart
    [Arguments]    ${product_name}
    ${locator.product_url}    common_keywords.Change Name To Url    ${product_name}    ${locator.remove_product_on_cart}
    common_keywords.Click By Element    ${locator.product_url}

Verify Remove '${product_name}' From Cart Remove Button Change To Add Button
    ${locator.product_url}    common_keywords.Change Name To Url    ${product_name}    ${locator.add_to_cart_item}
    common_keywords.Check Text Should Be    ${locator.product_url}    Add to cart

Click Cart Button
    common_keywords.Click By Element    ${locator.cart_button}

Click Product Name
    [Arguments]    ${product_name}
    ${locator.product_url}    common_keywords.Change Product Name    ${product_name}    ${locator.product_name}
    common_keywords.Click By Element    ${locator.product_url}

Click Product Image
    [Arguments]    ${product_name}
    ${locator.product_url}    common_keywords.Change Product Name    ${product_name}    ${locator.product_image}
    common_keywords.Click By Element    ${locator.product_url}

Verify Access To Product Page Success
    common_keywords.Check Text Should Be    ${locator.header}    Products