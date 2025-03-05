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
    Given Login To System is '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    When Add Product To Cart On Product List Page    ${product_name}
    Then Verify Add To Cart Button Change To Remove Correct    ${product_name.no_1}
    And Verify Add To Cart Button Change To Remove Correct    ${product_name.no_2}

Verify That User Can Remove Product From Cart When User Click Remove Button On Product List Page.
    [Tags]    PL_007    High
    Given Login To System is '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    And Add Product To Cart On Product List Page    ${product_name}
    When Remove Product Out Of Cart    ${product_name}
    Then Verify Remove From Cart Button Change To Add Correct    ${product_name.no_1}
    And Verify Remove From Cart Button Change To Add Correct    ${product_name.no_2}

Verify That System Rediect To Product Detail Page When Click Product Name.
    [Tags]    PL_008    Medium
    Given Login To System is '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    When Access To Detail Page By Product Name    ${product_name.no_1}
    Then Verify Product Detail Success    ${product_name.no_1}

Verify That System Rediect To Product Detail Page When Click Product Image.
    [Tags]    PL_009    Medium
    Given Login To System is '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    When Access To Detail Page By Product Image    ${product_name.no_1}
    And Verify Product Detail Success    ${product_name.no_1}