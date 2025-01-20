*** Keywords ***
Input Firstname
        [Arguments]        ${firstname}
        common_function.Input Data     ${address_locator.first_name}        ${firstname} 

Input Lastname
        [Arguments]        ${lastname}
        common_function.Input Data    ${address_locator.last_name}          ${lastname}

Input Zipcode
        [Arguments]        ${zipcode}
        common_function.Input Data    ${address_locator.zipcode}             ${zipcode} 

Click Continue Button
        common_function.Click By Element         ${address_locator.continue}

Verify Access To Address Page Success
        common_function.Check Text Should Be     ${address_locator.header}        Checkout: Your Information