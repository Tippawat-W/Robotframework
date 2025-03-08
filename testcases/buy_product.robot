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
    [Setup]    Open The Website And Login The System
    Given Add Multiple '${product_name}' To Cart From Product List Page
    And Click Cart Button On Navbar
    And Verify Access To Cart Page Success
    And Click Checkout Button On Cart Page
    And Verify Access To Address Page Success
    And Fill in the information '${address_valid.firstname}' And '${address_valid.lastname}' And '${address_valid.zipcode}' Data
    And Click Continue Button On Address Page
    And Verify Access To Payment Page Success
    And Check the All Product On the Payment Page    ${product_name}
    When Click Finish Button On Payment Page
    And Verify Access To Finish Page Success
    Then Verify Order Products Is A Success