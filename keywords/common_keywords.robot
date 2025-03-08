*** Keywords ***
Open Website
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}

Open Swag Labs Website With Chrome Browser
    Open browser    ${web_site.saucedemo}    ${web_brower.chrome}

Input Data
    [Arguments]    ${locator_field}    ${data}    ${timeout}=${GLOBAL_TIMEOUT}
    Wait Until Element Is Visible    ${locator_field}    ${timeout}
    Input Text    ${locator_field}    ${data}

Click By Element
    [Arguments]    ${locator_field}    ${timeout}=${GLOBAL_TIMEOUT}
    Wait Until Element Is Visible    ${locator_field}    ${timeout}
    Click Element    ${locator_field}

Check Text Should Be
    [Arguments]    ${locator_field}    ${data}    ${timeout}=${GLOBAL_TIMEOUT}
    Wait Until Element Contains    ${locator_field}    ${data}    ${timeout}
    Element Text Should Be    ${locator_field}    ${data}

Change Name To Url
    [Arguments]    ${product_name}    ${locator_url}  
    ${product_name_temp}    String.Convert to lower case    ${product_name}
    ${product_name_temp}    String.Replace string    ${product_name_temp}    ${SPACE}    -
    ${locator.product_url}    String.Replace string    ${locator_url}    {product_name}    ${product_name_temp}
    [Return]    ${locator.product_url}

Change Product Name
    [Arguments]    ${product_name}    ${locator_product}
    ${locator.product}=    String.Replace string    ${locator_product}    {product_name}    ${product_name}
    [Return]    ${locator.product}

Open The Website And Login The System
    Open Swag Labs Website With Chrome Browser
    Login To The System With '${valid_user.id}' And '${valid_user.password}'
    Click Login Button On Landing Page
    Verify Access To Product List Page Success

Count The Number On Cart Icon When Add Product To Cart
    ${number of product}    Convert To Integer    ${number of product}
    ${number of product}    Evaluate    ${number of product} + 1
    Set Test Variable    ${number of product}    ${number of product}

Count The Number On Cart Icon When Remove Product From Cart
    ${number of product}    Convert To Integer    ${number of product}
    ${number of product}    Evaluate    ${number of product} - 1
    Set Test Variable    ${number of product}    ${number of product}

Verify The Number Of Products On Cart Icon Is Same As Product Is Purchased
    ${number of product}    Convert To String    ${number of product}
    ${cart_navbar_locator.number_of_product}    String.Replace string    ${cart_navbar_locator.number_of_product}    {number_of_product}    ${number_of_product}
    Check Text Should Be    ${cart_navbar_locator.number_of_product}    ${number of product}

Verify Removed All Number Of Product On Cart Icon
    ${number of product}    Convert To String    ${number of product}
    ${cart_navbar_locator.number_of_product}    String.Replace string    ${cart_navbar_locator.number_of_product}    {number_of_product}    ${number_of_product}
    Element Should Not Be Visible    ${cart_navbar_locator.number_of_product}