*** Keywords ***
Access To Finish Page
    payment_page.Click Finish Button
    finish_page.Verify Access To Finish Page Success

Check Product Name
    [Arguments]           ${product_name}
    FOR    ${values}    IN  @{product_name.values()}
        payment_page.Product Name          ${values}
    END