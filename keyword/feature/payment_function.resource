*** keyword ***
access to finish page
    payment_page.click finish button
    finish_page.verify access to finish page success

check product name
    [Arguments]           ${product_name}
    payment_page.product name         ${product_name}