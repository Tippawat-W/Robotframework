*** Setting ***
Resource    ${CURDIR}/../../import/import.resource
Resource    ../../keywords/features/cart_function.resource
Test Setup     Open Browser    ${web_site.saucedemo}        ${web_broser.chrome}
Test Teardown    Close Browser

*** Test Cases ***

Verify That System Display Product Add To Cart Already On Cart Page
    [Tags]              CP_001
    Given Login To System is '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    When Add Product To Cart On Product List Page      ${product_name}
    And Click Cart Button On Navbar
    Then Verify Access To Cart Page Success
    And Verify Cart Page With Product On Cart          ${product_name}

Verify That System Redirect To Product Detail Page When User Click Product Name On Cart Page.
    [Tags]              CP_002
    Given Login To System is '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    And Add Product To Cart On Product List Page         ${product_name}
    And Click Cart Button On Navbar
    And Verify Access To Cart Page Success
    And Verify Cart Page With Product On Cart            ${product_name}
    When Access To Product Detail Page                   ${product_name.no_1}
    And Verify Product Detail Success                    ${product_name.no_1}

Verify That User Can Remove Product From Cart When User Click Remove Button On Cart Page.
    [Tags]              CP_003
    Given Login To System is '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    And Add Product To Cart On Product List Page         ${product_name}
    And Click Cart Button On Navbar
    And Verify Access To Cart Page Success
    And Verify Cart Page With Product On Cart            ${product_name}
    When Remove Product Out Of Cart On Cart Page         ${product_name.no_1}
    Then Verify Remove Product Success                   ${product_name.no_1}

Verify That System Redirect To Product List Page When User Click Continue Shopping Button. 
    [Tags]              CP_004
    Given Login To System is '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    And Click Cart Button On Navbar
    And Verify Access To Cart Page Success
    When Click Continue Button On Cart Page
    Then Verify Access To Product Page Success 

Verify That System Redirect To Check Out Page When User Click Check Out Button. 
    [Tags]              CP_005
    Given Login To System is '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    And Add Product To Cart On Product List Page         ${product_name}
    And Click Cart Button On Navbar
    And Verify Access To Cart Page Success
    And Verify Cart Page With Product On Cart          ${product_name}
    When Click Checkout Button
    Then Verify Access To Address Page Success


*** Comments ***

Verify That System Display Product Add To Cart Already On Cart Page
    [Tags]              CP_001
    Given Login To System is '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    product_function.Add Product To Cart On Product List Page         ${product_name}
    cart_navbar.Click Cart Button On Navbar
    cart_function.Verify Cart Page With Product On Cart  ${product_name}

Verify That System Redirect To Product Detail Page When User Click Product Name On Cart Page.
    [Tags]              CP_002
    cart_function.Access To Product Detail Page         ${product_name.no_1}

Verify That User Can Remove Product From Cart When User Click Remove Button On Cart Page.
    [Tags]              CP_003
    cart_feature.Access To Cart Page
    cart_function.Remove Product Out Of Cart On Cart page         ${product_name.no_1}

Verify That System Redirect To Product List Page When User Click Continue Shopping Button. 
    [Tags]              CP_004
    cart_function.Back To Product List Page

Verify That System Redirect To Check Out Page When User Click Check Out Button. 
    [Tags]              CP_005
    cart_feature.Access To Cart Page
    cart_function.Access To Address Page
