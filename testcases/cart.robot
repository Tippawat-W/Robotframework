*** Setting ***
Resource    ${CURDIR}/../resource/import/import.robot
Resource    ${CURDIR}/../keywords/login_keywords.robot
Resource    ${CURDIR}/../keywords/product_keywords.robot
Resource    ${CURDIR}/../keywords/cart_keywords.robot
Resource    ${CURDIR}/../keywords/product_detail_keywords.robot
Resource    ${CURDIR}/../keywords/cart_navbar_keywords.robot
Resource    ${CURDIR}/../keywords/address_keywords.robot
Test Teardown    Close Browser

*** Test Cases ***
Verify That System Display Product Add To Cart Already On Cart Page
    [Tags]    CP_001    Medium
    [Setup]    Open The Website And Login The System
    Given Add Multiple '${product_name}' To Cart From Product List Page
    When Click Cart Button On Navbar
    And Verify Access To Cart Page Success
    Then Verify Cart Page With '${product_name}' On Cart

Verify That System Redirect To Product Detail Page When User Click Product Name On Cart Page.
    [Tags]    CP_002    Medium
    [Setup]    Open The Website And Login The System
    Given Add Multiple '${product_name}' To Cart From Product List Page
    And Click Cart Button On Navbar
    And Verify Access To Cart Page Success
    And Verify Cart Page With '${product_name}' On Cart
    When Click '${product_name.no_1}' On Cart Page
    Then Verify '${product_name.no_1}' Detail Success

Verify That User Can Remove Product From Cart When User Click Remove Button On Cart Page.
    [Tags]    CP_003    High
    [Setup]    Open The Website And Login The System
    Given Add Multiple '${product_name}' To Cart From Product List Page
    And Click Cart Button On Navbar
    And Verify Access To Cart Page Success
    And Verify Cart Page With '${product_name}' On Cart
    When Click Remove Button On Cart Page To Delete '${product_name.no_1}'
    Then Verify Remove '${product_name.no_1}' Success

Verify That System Redirect To Product List Page When User Click Continue Shopping Button.
    [Tags]    CP_004    Medium
    [Setup]    Open The Website And Login The System
    Given Click Cart Button On Navbar
    And Verify Access To Cart Page Success
    When Click Continue Button On Address Page On Cart Page
    Then Verify Access To Product List Page Success

Verify That System Redirect To Check Out Page When User Click Check Out Button.
    [Tags]    CP_005    High
    [Setup]    Open The Website And Login The System
    Given Add Multiple '${product_name}' To Cart From Product List Page
    And Click Cart Button On Navbar
    And Verify Access To Cart Page Success
    And Verify Cart Page With '${product_name}' On Cart
    When Click Checkout Button On Cart Page
    Then Verify Access To Address Page Success