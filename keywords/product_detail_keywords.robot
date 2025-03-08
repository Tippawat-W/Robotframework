*** Keywords ***
Verify '${product_name}' Detail Success
    ${locator.product_url}    Change Product Name    ${product_name}    ${locator.product_detail_name}
    Check Text Should Be    ${locator.product_url}    ${product_name}

Click Back To Products Button On Product Deatil Page
    Click By Element    ${locator.back_to_products_button}

Click Add Item To Cart On Product Deatil Page
    Click By Element    ${locator.product_detail_add_button}
    Count The Number On Cart Icon When Add Product To Cart

Verify Add To Cart Button Change To Remove Button On Product Detail Page
    Check Text Should Be    ${locator.product_detail_remove_button}    Remove

Click Remove Item From Cart On Product Deatil Page
    Click By Element    ${locator.product_detail_remove_button}
    Count The Number On Cart Icon When Remove Product From Cart

Verify Remove From Cart Button Change To Add Correct On Product Detail Page
    Check Text Should Be    ${locator.product_detail_add_button}    Add to cart