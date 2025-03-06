*** Setting ***
Resource    ${CURDIR}/../../resource/import/import.robot
Resource    ${CURDIR}/../../keywords/login_keywords.robot
Resource    ${CURDIR}/../../keywords/product_keywords.robot
Resource    ${CURDIR}/../../keywords/product_detail_keywords.robot
Resource    ${CURDIR}/../../keywords/cart_navbar_keywords.robot
Test Setup    Open Swag Labs Website With Chrome Browser
Test Teardown    Close Browser

*** Test Cases ***
Verify That User Can Add Product To Cart When User Click Add To Cart Button On Product List Page.
    [Tags]    PL_006    High
    Given Login To The System With '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    When Add '${product_name}' To Cart From Product List Page
    Then Then Verify Add ${product_name.no_1} Then Add Button Change To Remove Button
    And Then Verify Add ${product_name.no_2} Then Add Button Change To Remove Button

Verify That User Can Remove Product From Cart When User Click Remove Button On Product List Page.
    [Tags]    PL_007    High
    Given Login To The System With '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    And Add '${product_name}' To Cart From Product List Page
    When Remove Product Out Of Cart    ${product_name}
    Then Verify Remove '${product_name.no_1}' From Cart Remove Button Change To Add Button
    And Verify Remove '${product_name.no_2}' From Cart Remove Button Change To Add Button

Verify That System Rediect To Product Detail Page When Click Product Name.
    [Tags]    PL_008    Medium
    Given Login To The System With '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    When Access To Detail Page By '${product_name.no_1}' 
    Then Verify '${product_name.no_1}' Detail Success

Verify That System Rediect To Product Detail Page When Click Product Image.
    [Tags]    PL_009    Medium
    Given Login To The System With '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    When Access To Detail Page By '${product_name.no_1}' Image
    And Verify '${product_name.no_1}' Detail Success