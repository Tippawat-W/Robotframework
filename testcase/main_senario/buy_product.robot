*** Setting ***
Resource        ${CURDIR}/../../resource/import/import.resource
Resource        ${CURDIR}/../../keywords/pages/login_page.resource
Resource        ${CURDIR}/../../keywords/pages/product_page.resource
Resource        ${CURDIR}/../../keywords/pages/cart_page.resource
Resource        ${CURDIR}/../../keywords/pages/address_page.resource
Resource        ${CURDIR}/../../keywords/pages/payment_page.resource
Resource        ${CURDIR}/../../keywords/pages/finish_page.resource
Resource        ${CURDIR}/../../component/keywords/pages/cart_navbar.resource
Test Teardown    Close Browser

*** Test Cases ***
Order Product Success
    Given Open Website                 ${web_site.saucedemo}        ${web_broser.chrome}
    And Login To System is '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    When Add Product To Cart On Product List Page         ${product_name}
    And Access To Cart Page
    And Access To Address Page
    And Information '${address_valid.firstname}' and '${address_valid.lastname}' and '${address_valid.zipcode}' Data
    And Access To Payment Page
    And Check Product Name          ${product_name}
    And Access To Finish Page
    Then Success Order
    
*** comment ***