*** Keywords ***
Verify Order Products Is A Success
    Check Text Should Be    ${finish_locator.payment_success}    Thank you for your order!

Verify Access To Finish Page Success
    Check Text Should Be    ${finish_locator.header}    Checkout: Complete!