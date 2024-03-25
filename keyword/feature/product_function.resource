*** Variables ***
${number of product}    0


*** keyword ***
add product to cart
    [Arguments]        ${product_name}
    FOR    ${product_name}    IN  @{product_name.values()}
        product_page.add item to cart                 ${product_name}
        product_page.verify add to cart button change to remove correct         ${product_name}
        ${number of product}=        Convert To Integer    ${number of product}
        ${number of product}=    Evaluate    ${number of product} + 1
        cart_navbar.verify number of product add to cart    ${number of product}
    END
        Set Suite Variable        ${number of product}         ${number of product}

remove product out of cart
    [Arguments]        ${product_name}
    FOR    ${product_name}    IN  @{product_name.values()}
        product_page.remove item from cart                 ${product_name}
        product_page.verify remove from cart button change to add correct            ${product_name}
        ${number of product}=        Convert To Integer    ${number of product}
        ${number of product}=    Evaluate    ${number of product} - 1
        Run Keyword If    ${number of product} != 0         cart_navbar.verify number of product add to cart    ${number of product}
        ...    ELSE    cart_navbar.verify remove all number of product on cart            ${number of product}
    END

access to detail page by product name
    [Arguments]        ${product_name}
    product_page.click product name         ${product_name}
    product_detail_page.verify produect detail success       ${product_name}

access to detail page by product image
    [Arguments]        ${product_name}
    product_page.click product image                    ${product_name}
    product_detail_page.verify produect detail success       ${product_name}         