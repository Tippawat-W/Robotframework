*** Keywords ***
Open Website
    [Arguments]        ${browser}        ${url}
    SeleniumLibrary.Open Browser        ${browser}        ${url}

Input Data
    [Arguments]        ${locator_field}        ${data}        ${timeout}=${GLOBAL_TIMEOUT}
    SeleniumLibrary.Wait Until Element Is Visible       ${locator_field}        ${timeout}
    SeleniumLibrary.Input Text        ${locator_field}        ${data}

Click By Element
    [Arguments]        ${locator_field}     ${timeout}=${GLOBAL_TIMEOUT}
    SeleniumLibrary.Wait Until Element Is Visible       ${locator_field}        ${timeout}
    SeleniumLibrary.Click Element       ${locator_field}

Check Text Should Be
    [Arguments]        ${locator_field}      ${data}       ${timeout}=${GLOBAL_TIMEOUT}
    SeleniumLibrary.Wait Until Element Contains        ${locator_field}         ${data}       ${timeout}
    SeleniumLibrary.Element Text Should Be             ${locator_field}         ${data}

Change Name To Url
    [Arguments]        ${product_name}        ${locator_url}  
    ${product_name_temp}=       String.Convert to lower case     ${product_name}
    ${product_name_temp}=       String.Replace string        ${product_name_temp}     ${SPACE}    -
    ${locator.product_url}=     String.Replace string       ${locator_url}     {product_name}    ${product_name_temp}
    [Return]        ${locator.product_url} 

Change Product Name
    [Arguments]        ${product_name}        ${locator_product}  
    ${locator.product}=     String.Replace string       ${locator_product}     {product_name}    ${product_name}
    [Return]        ${locator.product}