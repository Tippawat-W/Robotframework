*** Setting ***
Resource    ${CURDIR}/../../import/import.resource
Suite Setup     Open Browser    ${web_site.saucedemo}        ${web_broser.chrome}
Suite Teardown    Close Browser

*** Test Cases ***

Verify That User Can Add Product To Cart When User Click Add To Cart Button On Product List Page.
    [Tags]              PL_006
    login_function.Login To System       ${valid_user.id}        ${valid_user.password}
    product_function.Add Product To Cart         ${product_name}

Verify That User Can Remove Product From Cart When User Click Remove Button On Product List Page.
    [Tags]              PL_007
    product_function.Remove Product Out Of Cart    ${product_name}

Verify That System Rediect To Product Detail Page When Click Product Name.
    [Tags]              PL_008
    product_function.Access To Detail Page By Product Name         ${product_name.no_1}
    product_detail_function.Back To Product List Page

Verify That System Rediect To Product Detail Page When Click Product Image.
    [Tags]              PL_009
    product_function.Access To Detail Page By Product Image         ${product_name.no_1}