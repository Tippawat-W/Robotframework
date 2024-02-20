*** keyword ***
click finish button
        common_function.click by element         ${payment_locator.finish_button} 

product name
        [Arguments]      ${product_name}
        ${locator.product}=     common_function.change product name    ${product_name}        ${payment_locator.product_name} 
        common_function.check text should be     ${locator.product}           ${product_name}

verify access to payment page success
        common_function.check text should be     ${payment_locator.header}        Checkout: Overview