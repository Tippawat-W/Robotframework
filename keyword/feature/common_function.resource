*** keyword ***
open website
    [Arguments]        ${browser}        ${url}
    SeleniumLibrary.Open Browser        ${browser}        ${url}

input data
    [Arguments]        ${locator_field}        ${data}        ${timeout}=${GLOBAL_TIMEOUT}
    SeleniumLibrary.Wait Until Element Is Visible       ${locator_field}        ${timeout}
    SeleniumLibrary.Input Text        ${locator_field}        ${data}

click by element
    [Arguments]        ${locator_field}     ${timeout}=${GLOBAL_TIMEOUT}
    SeleniumLibrary.Wait Until Element Is Visible       ${locator_field}        ${timeout}
    SeleniumLibrary.Click Element       ${locator_field}

check text should be
    [Arguments]        ${locator_field}      ${data}       ${timeout}=${GLOBAL_TIMEOUT}
    SeleniumLibrary.Wait Until Element Contains        ${locator_field}         ${data}       ${timeout}
    SeleniumLibrary.Element Text Should Be             ${locator_field}         ${data}

change name to url
    [Arguments]        ${product_name}        ${locator_url}  
    ${product_name_temp}=       String.Convert to lower case     ${product_name}
    ${product_name_temp}=       String.Replace string        ${product_name_temp}     ${SPACE}    -
    ${locator.product_url}=     String.Replace string       ${locator_url}     {product_name}    ${product_name_temp}
    [Return]        ${locator.product_url} 

change product name
    [Arguments]        ${product_name}        ${locator_product}  
    ${locator.product}=     String.Replace string       ${locator_product}     {product_name}    ${product_name}
    [Return]        ${locator.product}