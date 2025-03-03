*** Keywords ***
Access To Finish Page
    Click Finish Button
    finish_page.Verify Access To Finish Page Success

Check Product Name
    [Arguments]           ${product_name}
    FOR    ${values}    IN  @{product_name.values()}
        Product Name          ${values}
    END

Click Finish Button
        common_function.Click By Element         ${payment_locator.finish_button} 

Product Name
        [Arguments]      ${product_name}
        ${locator.product}=     common_function.Change Product Name    ${product_name}        ${payment_locator.product_name} 
        common_function.Check Text Should Be     ${locator.product}           ${product_name}

Verify Access To Payment Page Success
        common_function.Check Text Should Be     ${payment_locator.header}        Checkout: Overview