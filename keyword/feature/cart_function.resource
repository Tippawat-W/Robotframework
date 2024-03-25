*** keyword ***
access to address page
    cart_page.click checkout button
    address_page.verify access to address page success

verify cart page with product on cart
    [Arguments]         ${product_name}
    FOR    ${product_name}    IN  @{product_name.values()}
        cart_page.verify display product to cart page success                  ${product_name}
    END

access to product detail page
    [Arguments]        ${product_name}
    cart_page.click product name         ${product_name}
    product_detail_page.verify produect detail success       ${product_name}

back to product list page
    cart_page.click continue button
    product_page.verify access to product page success

remove product out of cart
    [Arguments]        ${product_name}
    ${is_dict}    Evaluate    isinstance($product_name, dict)
    IF      ${is_dict}     
        FOR    ${product_name}    IN  @{product_name.values()}
            cart_page.click remove button                   ${product_name}
            cart_page.verify remove product success         ${product_name}
        END
    ELSE
        cart_page.click remove button                   ${product_name}
        cart_page.verify remove product success         ${product_name}
    END









*** Comments *** 
        ${is_dict}    Evaluate    isinstance(${product_name}, dict)
    IF      ${is_dict}     
        FOR    ${product_name}    IN  @{product_name.values()}
            cart_page.click remove button                   ${product_name}
            cart_page.verify remove product success         ${product_name}
        END
    ELSE
        cart_page.click remove button                   ${product_name}
        cart_page.verify remove product success         ${product_name}
    END


    ${length}=      BuiltIn.Evaluate    len('${product_name}')
    log to console      ${length}

    ${product_name}    Evaluate    isinstance(${my_dict_variable}, dict)
    Should Be True    ${is_dict}
    
    Run Keyword If    ${product_name}         cart_navbar.verify number of product add to cart    ${number of product}
    ...    ELSE    cart_navbar.verify remove all number of product on cart            ${number of product}


    FOR    ${product_name}    IN  @{product_name.values()}
        cart_page.click remove button                   ${product_name}
        cart_page.verify remove product success         ${product_name}
    END