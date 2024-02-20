*** keyword ***
information data
    [Arguments]        ${firstname}        ${lastname}        ${zipcode}
    address_page.input first name            ${firstname}
    address_page.input last name             ${lastname}
    address_page.input zipcode               ${zipcode}

access to payment page
    address_page.click continue button
    payment_page.verify access to payment page success