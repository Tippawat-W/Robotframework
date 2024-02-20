*** Setting ***
Resource    ${CURDIR}/../import/import.resource

*** Test Cases ***
Test for loop
    

*** comment ***
Order product success
    common_function.open website                 ${web_site.saucedemo}        ${web_broser.chrome}
    login_function.login to system               ${valid_user.id}        ${valid_user.password}
    product_function.add product to cart         ${product_name.no_1}
    product_function.access to cart page 
    cart_function.access to address page
    address_function.information data            ${address_valid.firstname}    ${address_valid.lastname}    ${address_valid.zipcode}
    address_function.access to payment page
    payment_function.check product name          ${product_name.no_1}
    payment_function.access to finish page
    finish_page.success order
