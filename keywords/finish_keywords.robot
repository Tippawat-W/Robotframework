*** Keywords ***
Success Order
    common_keywords.Check Text Should Be    ${finish_locator.payment_success}    Thank you for your order!

Verify Access To Finish Page Success
    common_keywords.Check Text Should Be    ${finish_locator.header}    Checkout: Complete!