*** Keywords ***
Access To Address Page
    Click Checkout Button
    address_keywords.Verify Access To Address Page Success

Verify Cart Page With Product On Cart
    [Arguments]    ${product_name}
    FOR    ${product_name}    IN  @{product_name.values()}
        Verify Display Product To Cart Page Success    ${product_name}
    END

Access To Product Detail Page
    [Arguments]    ${product_name}
   Click Product Name    ${product_name}
    product_detail_keywords.Verify Product Detail Success    ${product_name}

Back To Product List Page On Cart Page
    Click Continue Button On Cart Page
    product_keywords.Verify Access To Product Page Success

Remove Product Out Of Cart On Cart Page
    [Arguments]    ${product_name}
    ${is_dict}    Evaluate    isinstance($product_name, dict)
    IF    ${is_dict}    
        FOR    ${product_name}    IN  @{product_name.values()}
            Click Remove Button    ${product_name}
            Verify Remove Product Success    ${product_name}
        END
    ELSE
        Click Remove Button    ${product_name}
        Verify Remove Product Success    ${product_name}
    END

Click Checkout Button
    common_keywords.Click By Element    ${cart_locator.checkout_button}

Verify Access To Cart Page Success
    common_keywords.Check Text Should Be    ${cart_locator.header}    Your Cart

Verify Display Product To Cart Page Success
    [Arguments]    ${product_name}
    ${locator.product}=    common_keywords.Change Product Name    ${product_name}    ${cart_locator.product_name}
    common_keywords.Check Text Should Be    ${locator.product}    ${product_name}

Click Product Name
    [Arguments]    ${product_name}
    ${locator.product_url}=    common_keywords.Change Product Name    ${product_name}    ${cart_locator.product_name}
    common_keywords.Click By Element    ${locator.product_url}

Click Continue Button On Cart Page
    common_keywords.Click By Element    ${cart_locator.continue_shop_button}

Click Remove Button
    [Arguments]    ${product_name}
    ${locator.product}=    common_keywords.Change Name To Url    ${product_name}    ${cart_locator.remove_button}
    common_keywords.Click By Element    ${locator.product}

Verify Remove Product Success
    [Arguments]    ${product_name}
    ${locator.product}=    common_keywords.Change Name To Url    ${product_name}    ${cart_locator.remove_button}
    SeleniumLibrary.Element Should Not Be Visible    ${locator.product}