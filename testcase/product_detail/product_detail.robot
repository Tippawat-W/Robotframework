*** Setting ***
Resource    ${CURDIR}/../../import/import.resource
Suite Setup     Open Browser    ${web_site.saucedemo}        ${web_broser.chrome}
Suite Teardown    Close Browser

*** Test Cases ***

Verify That User Can Add Product To Cart When User Click Add To Cart Button On Product Detail Page.
    [Tags]              PD_001
    login_function.Login To System       ${valid_user.id}        ${valid_user.password}
    product_function.Access To Detail Page By Product Name         ${product_name.no_1}
    product_detail_function.Add Product To Cart                    ${product_name.no_1}

Verify That User Can Remove Product To Cart When User Click Remove Button On Product Detail Page.
    [Tags]              PD_002
    product_detail_function.Remove Product Out Of Cart             ${product_name.no_1}

Verify That System Rediect To Product List Page When User Click Back To Products Button From Product Detail Page.
    [Tags]              PD_003
    product_detail_function.Back To Product List Page