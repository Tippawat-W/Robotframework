*** Setting ***
Resource    ${CURDIR}/../resource/import/import.robot
Resource    ${CURDIR}/../keywords/login_keywords.robot
Resource    ${CURDIR}/../keywords/product_keywords.robot
Resource    ${CURDIR}/../keywords/product_detail_keywords.robot
Resource    ${CURDIR}/../keywords/cart_navbar_keywords.robot
Test Teardown    Close Browser

*** Test Cases ***
Verify That User Can Add Product To Cart When User Click Add To Cart Button On Product List Page.
    [Tags]    PL_006    High
    [Setup]    Open The Website And Login The System
    When Add Multiple '${product_name}' To Cart From Product List Page
    Then Then Verify Add ${product_name.no_1} Then Add Button Change To Remove Button
    And Then Verify Add ${product_name.no_2} Then Add Button Change To Remove Button
    And Verify The Number Of Products On Cart Icon Is Same As Product Is Purchased

Verify That User Can Remove Product From Cart When User Click Remove Button On Product List Page.
    [Tags]    PL_007    High
    [Setup]    Open The Website And Login The System
    Given Add Multiple '${product_name}' To Cart From Product List Page
    When Remove Multiple '${product_name}' Out Of Cart
    Then Verify Remove '${product_name.no_1}' From Cart Remove Button Change To Add Button
    And Verify Remove '${product_name.no_2}' From Cart Remove Button Change To Add Button
    And Verify Removed All Number Of Product On Cart Icon

Verify That System Rediect To Product Detail Page When Click Product Name.
    [Tags]    PL_008    Medium
    [Setup]    Open The Website And Login The System
    When Click '${product_name.no_1}' On Product List Page
    Then Verify '${product_name.no_1}' Detail Success

Verify That System Rediect To Product Detail Page When Click Product Image.
    [Tags]    PL_009    Medium
    [Setup]    Open The Website And Login The System
    When Click '${product_name.no_1}' Image On Product List Page
    And Verify '${product_name.no_1}' Detail Success