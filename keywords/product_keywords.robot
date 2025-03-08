*** Keywords ***
Add Multiple '${product_name}' To Cart From Product List Page
    FOR    ${product_name}    IN  @{product_name.values()}
        Add '${product_name}' To Cart From Product List Page
        Count The Number On Cart Icon When Add Product To Cart
    END

Remove Multiple '${product_name}' Out Of Cart
    FOR    ${product_name}    IN  @{product_name.values()}
        Remove '${product_name}' From Cart On Product List Page
        Count The Number On Cart Icon When Remove Product From Cart
    END

Add '${product_name}' To Cart From Product List Page
    ${locator.product_url}    common_keywords.Change Name To Url    ${product_name}    ${locator.add_to_cart_item}
    common_keywords.Click By Element    ${locator.product_url}

Verify Add ${product_name} Then Add Button Change To Remove Button
    ${locator.product_url}    common_keywords.Change Name To Url    ${product_name}    ${locator.remove_product_on_cart}
    common_keywords.Check Text Should Be    ${locator.product_url}    Remove

Remove '${product_name}' From Cart On Product List Page
    ${locator.product_url}    common_keywords.Change Name To Url    ${product_name}    ${locator.remove_product_on_cart}
    common_keywords.Click By Element    ${locator.product_url}

Verify Remove '${product_name}' From Cart Remove Button Change To Add Button
    ${locator.product_url}    common_keywords.Change Name To Url    ${product_name}    ${locator.add_to_cart_item}
    common_keywords.Check Text Should Be    ${locator.product_url}    Add to cart

Click '${product_name}' On Product List Page
    ${locator.product_url}    common_keywords.Change Product Name    ${product_name}    ${locator.product_name}
    common_keywords.Click By Element    ${locator.product_url}

Click '${product_name}' Image On Product List Page
    ${locator.product_url}    common_keywords.Change Product Name    ${product_name}    ${locator.product_image}
    common_keywords.Click By Element    ${locator.product_url}

Verify Access To Product List Page Success
    common_keywords.Check Text Should Be    ${locator.header}    Products