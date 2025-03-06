*** Setting ***
Resource    ${CURDIR}/../resource/import/import.robot
Resource    ${CURDIR}/../keywords/login_keywords.robot
Resource    ${CURDIR}/../keywords/product_keywords.robot
Resource    ${CURDIR}/../keywords/cart_keywords.robot
Resource    ${CURDIR}/../keywords/address_keywords.robot
Resource    ${CURDIR}/../keywords/payment_keywords.robot
Resource    ${CURDIR}/../keywords/finish_keywords.robot
Resource    ${CURDIR}/../keywords/cart_navbar_keywords.robot
Test Teardown    Close Browser

*** Test Cases ***
Verify That User Can Order Product Success
    [Tags]    High
    Given Open Swag Labs Website With Chrome Browser
    And Login To The System With '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    When Add '${product_name}' To Cart From Product List Page
    And Access To Cart Page
    And Access To Address Page
    And Information '${address_valid.firstname}' And '${address_valid.lastname}' And '${address_valid.zipcode}' Data
    And Access To Payment Page
    And Check Product Name    ${product_name}
    And Access To Finish Page
    Then Verify Order Products Is A Success