*** Setting ***
Resource    ${CURDIR}/../../import/import.resource
Suite Setup     Open Browser    ${web_site.saucedemo}        ${web_broser.chrome}
Suite Teardown    Close Browser

*** Test Cases ***

Verify that user can add product to cart when user click Add to cart button on product detail page.
    [Tags]              PD_001
    login_function.login to system       ${valid_user.id}        ${valid_user.password}
    product_function.access to detail page by product name         ${product_name.no_1}
    product_detail_function.add product to cart                    ${product_name.no_1}

Verify that user can add product to cart when user click Add to cart button on product detail page.
    [Tags]              PD_002
    product_detail_function.remove product out of cart             ${product_name.no_1}

Verify that system rediect to product list page when user click Back to products button from product detail page.
    [Tags]              PD_003
    product_detail_function.back to product list page