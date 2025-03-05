*** Setting ***
Resource    ${CURDIR}/../../resource/import/import.robot
Resource    ${CURDIR}/../../keywords/login_keywords.robot
Resource    ${CURDIR}/../../keywords/product_keywords.robot
Resource    ${CURDIR}/../../keywords/cart_keywords.robot
Resource    ${CURDIR}/../../keywords/address_keywords.robot
Resource    ${CURDIR}/../../keywords/payment_keywords.robot
Resource    ${CURDIR}/../../keywords/finish_keywords.robot
Resource    ${CURDIR}/../../keywords/cart_navbar_keywords.robot
Test Teardown    Close Browser

*** Test Cases ***
Order Product Success
    [Tags]    High
    Given Open Swag Labs Website With Chrome Browser
    And Login To System is '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    When Add Product To Cart On Product List Page    ${product_name}
    And Access To Cart Page
    And Access To Address Page
    And Information '${address_valid.firstname}' and '${address_valid.lastname}' and '${address_valid.zipcode}' Data
    And Access To Payment Page
    And Check Product Name    ${product_name}
    And Access To Finish Page
    Then Success Order