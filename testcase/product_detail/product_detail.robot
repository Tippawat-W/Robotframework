*** Setting ***
Resource    ${CURDIR}/../../resource/import/import.resource
Resource        ${CURDIR}/../../keywords/pages/login_page.resource
Resource        ${CURDIR}/../../keywords/pages/product_page.resource
Resource        ${CURDIR}/../../keywords/pages/product_detail_page.resource
Resource        ${CURDIR}/../../component/keywords/pages/cart_navbar.resource
Test Setup     Open Browser    ${web_site.saucedemo}        ${web_broser.chrome}
Test Teardown    Close Browser

*** Test Cases ***
Verify That User Can Add Product To Cart When User Click Add To Cart Button On Product Detail Page.
    [Tags]              PD_001
    Given Login To System is '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    And Access To Detail Page By Product Name             ${product_name.no_1}
    And Verify Product Detail Success                     ${product_name.no_1}
    When Add Product To Cart On Product Detail
    And Verify Add To Cart Button Change To Remove Correct On Product Detail Page

Verify That User Can Remove Product To Cart When User Click Remove Button On Product Detail Page.
    [Tags]              PD_002
    Given Login To System is '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    And Access To Detail Page By Product Name         ${product_name.no_1}
    And Verify Product Detail Success                 ${product_name.no_1}
    And Add Product To Cart On Product Detail
    And Verify Add To Cart Button Change To Remove Correct On Product Detail Page
    When Remove Product Out Of Cart On Product Detail
    Then Verify Remove From Cart Button Change To Add Correct On Product Detail Page

Verify That System Rediect To Product List Page When User Click Back To Products Button From Product Detail Page.
    [Tags]              PD_003
    Given Login To System is '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    And Access To Detail Page By Product Name         ${product_name.no_1}
    And Verify Product Detail Success                  ${product_name.no_1}
    When Back To Product List Page On Product Detail Page
    Then Verify Access To Product Page Success  