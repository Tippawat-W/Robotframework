*** Setting ***
Resource    ${CURDIR}/../import/import.resource

*** Test Cases ***
Order product success
    common_function.open website                 ${web_site.saucedemo}        ${web_broser.chrome}
    login_function.login to system               ${valid_user.id}        ${valid_user.password}
    FOR    ${values}    IN  @{product_name.values()}
        product_function.add product to cart         ${values}
    END
    product_function.access to cart page 
    cart_function.access to address page
    address_function.information data            ${address_valid.firstname}    ${address_valid.lastname}    ${address_valid.zipcode}
    address_function.access to payment page
    FOR    ${values}    IN  @{product_name.values()}
        payment_function.check product name          ${values}
    END
    payment_function.access to finish page
    finish_page.success order
    
*** comment ***
