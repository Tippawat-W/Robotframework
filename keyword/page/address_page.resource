*** keyword ***
input firstname
        [Arguments]        ${firstname}
        common_function.input data     ${address_locator.first_name}        ${firstname} 

input lastname
        [Arguments]        ${lastname}
        common_function.input data    ${address_locator.last_name}          ${lastname}

input zipcode
        [Arguments]        ${zipcode}
        common_function.input data    ${address_locator.zipcode}             ${zipcode} 

click continue button
        common_function.click by element         ${address_locator.continue}

verify access to address page success
        common_function.check text should be     ${address_locator.header}        Checkout: Your Information