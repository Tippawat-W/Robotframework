*** Keywords ***
Verify Cart Page With '${product_name}' On Cart
    FOR    ${product_name}    IN  @{product_name.values()}
        Verify Display '${product_name}' To Cart Page Success
    END

Click Checkout Button On Cart Page
    Click By Element    ${cart_locator.checkout_button}

Verify Access To Cart Page Success
    Check Text Should Be    ${cart_locator.header}    Your Cart

Verify Display '${product_name}' To Cart Page Success
    ${locator.product}    Change Product Name    ${product_name}    ${cart_locator.product_name}
    Check Text Should Be    ${locator.product}    ${product_name}

Click '${product_name}' On Cart Page
    ${locator.product_url}    Change Product Name    ${product_name}    ${cart_locator.product_name}
    Click By Element    ${locator.product_url}

Click Continue Button On Address Page On Cart Page
    Click By Element    ${cart_locator.continue_shop_button}

Click Remove Button On Cart Page To Delete '${product_name}'
    ${locator.product}    Change Name To Url    ${product_name}    ${cart_locator.remove_button}
    Click By Element    ${locator.product}

Verify Remove '${product_name}' Success
    ${locator.product}    Change Name To Url    ${product_name}    ${cart_locator.remove_button}
    Element Should Not Be Visible    ${locator.product}