*** Keywords ***
Verify Cart Page With '${product_name}' On Cart
    FOR    ${product_name}    IN  @{product_name.values()}
        Verify Display '${product_name}' To Cart Page Success
    END

Click Checkout Button On Cart Page
    common_keywords.Click By Element    ${cart_locator.checkout_button}

Verify Access To Cart Page Success
    common_keywords.Check Text Should Be    ${cart_locator.header}    Your Cart

Verify Display '${product_name}' To Cart Page Success
    ${locator.product}    common_keywords.Change Product Name    ${product_name}    ${cart_locator.product_name}
    common_keywords.Check Text Should Be    ${locator.product}    ${product_name}

Click '${product_name}' On Cart Page
    ${locator.product_url}    common_keywords.Change Product Name    ${product_name}    ${cart_locator.product_name}
    common_keywords.Click By Element    ${locator.product_url}

Click Continue Button On Address Page On Cart Page
    common_keywords.Click By Element    ${cart_locator.continue_shop_button}

Click Remove Button On Cart Page To Delete '${product_name}'
    ${locator.product}    common_keywords.Change Name To Url    ${product_name}    ${cart_locator.remove_button}
    common_keywords.Click By Element    ${locator.product}

Verify Remove '${product_name}' Success
    ${locator.product}    common_keywords.Change Name To Url    ${product_name}    ${cart_locator.remove_button}
    SeleniumLibrary.Element Should Not Be Visible    ${locator.product}