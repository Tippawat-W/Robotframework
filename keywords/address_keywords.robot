*** Keywords ***
Fill in the information '${firstname}' And '${lastname}' And '${zipcode}' Data
    Input Firstname    ${firstname}
    Input Lastname    ${lastname}
    Input Zipcode    ${zipcode}

Input Firstname
    [Arguments]    ${firstname}
    common_keywords.Input Data    ${address_locator.first_name}    ${firstname}

Input Lastname
    [Arguments]    ${lastname}
    common_keywords.Input Data    ${address_locator.last_name}    ${lastname}

Input Zipcode
    [Arguments]    ${zipcode}
    common_keywords.Input Data    ${address_locator.zipcode}    ${zipcode} 

Click Continue Button On Address Page
    common_keywords.Click By Element    ${address_locator.continue}

Verify Access To Address Page Success
    common_keywords.Check Text Should Be    ${address_locator.header}    Checkout: Your Information