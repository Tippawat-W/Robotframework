*** Setting ***
Resource    ${CURDIR}/../../import/import.resource
Suite Setup     Open Browser    ${web_site.saucedemo}        ${web_broser.chrome}
Suite Teardown    Close Browser

*** Test Cases ***

Verify that system display product add to cart already on cart page
    [Tags]              CP_001
    login_function.login to system       ${valid_user.id}        ${valid_user.password}
    product_function.add product to cart         ${product_name}
    cart_navbar.click cart button
    cart_function.verify cart page with product on cart  ${product_name}

Verify that system redirect to product detail page when user click product name on cart page.
    [Tags]              CP_002
    cart_function.access to product detail page         ${product_name.no_1}

Verify that user can remove product from cart when user click Remove button on cart page.
    [Tags]              CP_003
    cart_feature.access to cart page
    cart_function.remove product out of cart            ${product_name.no_1}

Verify that system redirect to product list page when user click Continue Shopping button. 
    [Tags]              CP_004
    cart_function.back to product list page

Verify that system redirect to Check out page when user click Check out button. 
    [Tags]              CP_005
    cart_feature.access to cart page
    cart_function.access to address page
