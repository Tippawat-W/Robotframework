*** Setting ***
Resource    ${CURDIR}/../../resource/import/import.robot
Resource    ${CURDIR}/../../keywords/login_keywords.robot
Resource    ${CURDIR}/../../keywords/product_keywords.robot
Resource    ${CURDIR}/../../keywords/cart_keywords.robot
Resource    ${CURDIR}/../../keywords/product_detail_keywords.robot
Resource    ${CURDIR}/../../keywords/cart_navbar_keywords.robot
Resource    ${CURDIR}/../../keywords/address_keywords.robot
Test Setup    Open Swag Labs Website With Chrome Browser
Test Teardown    Close Browser

*** Test Cases ***
Verify That System Display Product Add To Cart Already On Cart Page
    [Tags]    CP_001    Medium
    Given Login To The System With '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    When Add '${product_name}' To Cart From Product List Page
    And Click Cart Button On Navbar
    Then Verify Access To Cart Page Success
    And Verify Cart Page With '${product_name}' On Cart

Verify That System Redirect To Product Detail Page When User Click Product Name On Cart Page.
    [Tags]    CP_002    Medium
    Given Login To The System With '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    And Add '${product_name}' To Cart From Product List Page
    And Click Cart Button On Navbar
    And Verify Access To Cart Page Success
    And Verify Cart Page With '${product_name}' On Cart
    When Access To '${product_name.no_1}' Detail Page
    And Verify '${product_name.no_1}' Detail Success

Verify That User Can Remove Product From Cart When User Click Remove Button On Cart Page.
    [Tags]    CP_003    High
    Given Login To The System With '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    And Add '${product_name}' To Cart From Product List Page
    And Click Cart Button On Navbar
    And Verify Access To Cart Page Success
    And Verify Cart Page With '${product_name}' On Cart
    When Remove Product Out Of Cart On Cart Page    ${product_name.no_1}
    Then Verify Remove Product Success    ${product_name.no_1}

Verify That System Redirect To Product List Page When User Click Continue Shopping Button.
    [Tags]    CP_004    Medium
    Given Login To The System With '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    And Click Cart Button On Navbar
    And Verify Access To Cart Page Success
    When Click Continue Button On Cart Page
    Then Verify Access To Product Page Success

Verify That System Redirect To Check Out Page When User Click Check Out Button.
    [Tags]    CP_005    High
    Given Login To The System With '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    And Add '${product_name}' To Cart From Product List Page
    And Click Cart Button On Navbar
    And Verify Access To Cart Page Success
    And Verify Cart Page With '${product_name}' On Cart
    When Click Checkout Button
    Then Verify Access To Address Page Success