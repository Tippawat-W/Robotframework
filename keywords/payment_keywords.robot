*** Keywords ***
Check the All Product On the Payment Page
    [Arguments]    ${product_name}
    FOR    ${product_name}    IN  @{product_name.values()}
        Check Item By '${product_name}'
    END

Click Finish Button On Payment Page
    Click By Element    ${payment_locator.finish_button}

Check Item By '${product_name}'
    ${locator.product}    Change Product Name    ${product_name}    ${payment_locator.product_name}
    Check Text Should Be    ${locator.product}    ${product_name}

Verify Access To Payment Page Success
    Check Text Should Be    ${payment_locator.header}    Checkout: Overview