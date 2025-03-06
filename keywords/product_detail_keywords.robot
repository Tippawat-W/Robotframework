*** Variables ***
${number of product}    0

*** Keywords ***
Back To Product List Page On Product Detail Page
    Click Back To Products Button
    product_keywords.Verify Access To Product Page Success

Add Product To Cart On Product Detail
    Add Item To Cart
    Verify Add To Cart Button Change To Remove Button On Product Detail Page
    ${number of product}=    Convert To Integer    ${number of product}
    ${number of product}=    Evaluate    ${number of product} + 1
    cart_navbar_keywords.Verify Number Of Product Add To Cart    ${number of product}
    Set Test Variable    ${number of product}    ${number of product}

Remove Product Out Of Cart On Product Detail
    Remove Item From Cart
    Verify Remove From Cart Button Change To Add Correct On Product Detail Page
    ${number of product}=    Convert To Integer    ${number of product}
    ${number of product}=    Evaluate    ${number of product} - 1
    Run Keyword If    ${number of product} != 0    cart_navbar_keywords.Verify Number Of Product Add To Cart    ${number of product}
    ...    ELSE    cart_navbar_keywords.Verify Remove All Number Of Product On Cart    ${number of product}

Verify '${product_name}' Detail Success
    ${locator.product_url}=    common_keywords.Change Product Name    ${product_name}    ${locator.product_detail_name}
    common_keywords.Check Text Should Be    ${locator.product_url}    ${product_name}

Click Back To Products Button
    common_keywords.Click By Element    ${locator.back_to_products_button}

Add Item To Cart
    common_keywords.Click By Element    ${locator.product_detail_add_button}

Verify Add To Cart Button Change To Remove Button On Product Detail Page
    common_keywords.Check Text Should Be    ${locator.product_detail_remove_button}    Remove

Remove Item From Cart
    common_keywords.Click By Element    ${locator.product_detail_remove_button}

Verify Remove From Cart Button Change To Add Correct On Product Detail Page
    common_keywords.Check Text Should Be    ${locator.product_detail_add_button}    Add to cart