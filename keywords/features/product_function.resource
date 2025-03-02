*** Variables ***
${number of product}    0


*** Keywords ***
Add Product To Cart On Product List Page
    [Arguments]        ${product_name}
    FOR    ${product_name}    IN  @{product_name.values()}
        product_page.Add Item To Cart                 ${product_name}
        product_page.Verify Add To Cart Button Change To Remove Correct         ${product_name}
        ${number of product}=        Convert To Integer    ${number of product}
        ${number of product}=    Evaluate    ${number of product} + 1
        cart_navbar.Verify Number Of Product Add To Cart    ${number of product}
    END
        Set Test Variable        ${number of product}         ${number of product}

Remove Product Out Of Cart
    [Arguments]        ${product_name}
    FOR    ${product_name}    IN  @{product_name.values()}
        product_page.Remove Item From Cart                 ${product_name}
        product_page.Verify Remove From Cart Button Change To Add Correct            ${product_name}
        ${number of product}=        Convert To Integer    ${number of product}
        ${number of product}=    Evaluate    ${number of product} - 1
        Run Keyword If    ${number of product} != 0         cart_navbar.Verify Number Of Product Add To Cart    ${number of product}
        ...    ELSE    cart_navbar.Verify Remove All Number Of Product On Cart            ${number of product}
    END

Access To Detail Page By Product Name
    [Arguments]        ${product_name}
    product_page.Click Product Name         ${product_name}
    product_detail_page.Verify Product Detail Success       ${product_name}

Access To Detail Page By Product Image
    [Arguments]        ${product_name}
    product_page.Click Product Image                    ${product_name}
    product_detail_page.Verify Product Detail Success       ${product_name}         