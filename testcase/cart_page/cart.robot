*** Setting ***
Resource    ${CURDIR}/../../import/import.resource
Suite Setup     Open Browser    ${web_site.saucedemo}        ${web_broser.chrome}
Suite Teardown    Close Browser

*** Test Cases ***

Verify That System Display Product Add To Cart Already On Cart Page
    [Tags]              CP_001
    login_function.Login To System       ${valid_user.id}        ${valid_user.password}
    product_function.Add Product To Cart         ${product_name}
    cart_navbar.Click Cart Button
    cart_function.Verify Cart Page With Product On Cart  ${product_name}

Verify That System Redirect To Product Detail Page When User Click Product Name On Cart Page.
    [Tags]              CP_002
    cart_function.Access To Product Detail Page         ${product_name.no_1}

Verify That User Can Remove Product From Cart When User Click Remove Button On Cart Page.
    [Tags]              CP_003
    cart_feature.Access To Cart Page
    cart_function.Remove Product Out Of Cart            ${product_name.no_1}

Verify That System Redirect To Product List Page When User Click Continue Shopping Button. 
    [Tags]              CP_004
    cart_function.Back To Product List Page

Verify That System Redirect To Check Out Page When User Click Check Out Button. 
    [Tags]              CP_005
    cart_feature.Access To Cart Page
    cart_function.Access To Address Page
