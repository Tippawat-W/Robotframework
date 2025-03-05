*** Variables ***
${number of product}    0

*** Keywords ***
Add Product To Cart On Product List Page
    [Arguments]    ${product_name}
    FOR    ${product_name}    IN  @{product_name.values()}
        Add Item To Cart    ${product_name}
        Verify Add To Cart Button Change To Remove Correct    ${product_name}
        ${number of product}=    Convert To Integer    ${number of product}
        ${number of product}=    Evaluate    ${number of product} + 1
        cart_navbar_keywords.Verify Number Of Product Add To Cart    ${number of product}
    END
    Set Test Variable    ${number of product}    ${number of product}

Remove Product Out Of Cart
    [Arguments]    ${product_name}
    FOR    ${product_name}    IN  @{product_name.values()}
        Remove Item From Cart    ${product_name}
        Verify Remove From Cart Button Change To Add Correct    ${product_name}
        ${number of product}=    Convert To Integer    ${number of product}
        ${number of product}=    Evaluate    ${number of product} - 1
        Run Keyword If    ${number of product} != 0    cart_navbar_keywords.Verify Number Of Product Add To Cart    ${number of product}
        ...    ELSE    cart_navbar_keywords.Verify Remove All Number Of Product On Cart    ${number of product}
    END

Access To Detail Page By Product Name
    [Arguments]    ${product_name}
    Click Product Name    ${product_name}
    product_detail_keywords.Verify Product Detail Success    ${product_name}

Access To Detail Page By Product Image
    [Arguments]    ${product_name}
    Click Product Image    ${product_name}
    product_detail_keywords.Verify Product Detail Success    ${product_name}
Add Item To Cart
    [Arguments]    ${product_name}
    ${locator.product_url}=    common_keywords.Change Name To Url    ${product_name}    ${locator.add_to_cart_item}
    common_keywords.Click By Element    ${locator.product_url}

Verify Add To Cart Button Change To Remove Correct
    [Arguments]    ${product_name}
    ${locator.product_url}=    common_keywords.Change Name To Url    ${product_name}    ${locator.remove_product_on_cart}
    common_keywords.Check Text Should Be    ${locator.product_url}    Remove

Remove Item From Cart
    [Arguments]    ${product_name}
    ${locator.product_url}=    common_keywords.Change Name To Url    ${product_name}    ${locator.remove_product_on_cart}
    common_keywords.Click By Element    ${locator.product_url}

Verify Remove From Cart Button Change To Add Correct
    [Arguments]    ${product_name}
    ${locator.product_url}=    common_keywords.Change Name To Url    ${product_name}    ${locator.add_to_cart_item}
    common_keywords.Check Text Should Be    ${locator.product_url}    Add to cart

Click Cart Button
    common_keywords.Click By Element    ${locator.cart_button}

Click Product Name
    [Arguments]    ${product_name}
    ${locator.product_url}=    common_keywords.Change Product Name    ${product_name}    ${locator.product_name}
    common_keywords.Click By Element    ${locator.product_url}

Click Product Image
    [Arguments]    ${product_name}
    ${locator.product_url}=    common_keywords.Change Product Name    ${product_name}    ${locator.product_image}
    common_keywords.Click By Element    ${locator.product_url}

Verify Access To Product Page Success
    common_keywords.Check Text Should Be    ${locator.header}    Products