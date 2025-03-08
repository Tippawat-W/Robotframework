*** Setting ***
Resource    ${CURDIR}/../resource/import/import.robot
Resource    ${CURDIR}/../keywords/login_keywords.robot
Resource    ${CURDIR}/../keywords/product_keywords.robot
Resource    ${CURDIR}/../keywords/product_detail_keywords.robot
Resource    ${CURDIR}/../keywords/cart_navbar_keywords.robot
Test Teardown    Close Browser

*** Test Cases ***
Verify That User Can Add Product To Cart When User Click Add To Cart Button On Product Detail Page.
    [Tags]    PD_001    High
    [Setup]    Open The Website And Login The System
    Given Click '${product_name.no_1}' On Product List Page
    And Verify '${product_name.no_1}' Detail Success
    When Click Add Item To Cart On Product Deatil Page
    And Verify Add To Cart Button Change To Remove Button On Product Detail Page
    And Verify The Number Of Products On Cart Icon Is Same As Product Is Purchased

Verify That User Can Remove Product To Cart When User Click Remove Button On Product Detail Page.
    [Tags]    PD_002    High
    [Setup]    Open The Website And Login The System
    Given Click '${product_name.no_1}' On Product List Page
    And Verify '${product_name.no_1}' Detail Success
    And Click Add Item To Cart On Product Deatil Page
    And Verify Add To Cart Button Change To Remove Button On Product Detail Page
    When Click Remove Item From Cart On Product Deatil Page
    Then Verify Remove From Cart Button Change To Add Correct On Product Detail Page
    And Verify Removed All Number Of Product On Cart Icon

Verify That System Rediect To Product List Page When User Click Back To Products Button From Product Detail Page.
    [Tags]    PD_003    Medium
    [Setup]    Open The Website And Login The System
    Given Click '${product_name.no_1}' On Product List Page
    And Verify '${product_name.no_1}' Detail Success
    When Click Back To Products Button On Product Deatil Page
    Then Verify Access To Product List Page Success