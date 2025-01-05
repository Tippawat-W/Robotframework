*** keyword ***
access to finish page
    payment_page.click finish button
    finish_page.verify access to finish page success

check product name
    [Arguments]           ${product_name}
    FOR    ${values}    IN  @{product_name.values()}
        payment_page.product name          ${values}
    END