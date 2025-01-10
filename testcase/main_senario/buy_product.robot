*** Setting ***
Resource    ${CURDIR}/../../import/import.resource

*** Test Cases ***
Order Product Success
    common_function.Open Website                 ${web_site.saucedemo}        ${web_broser.chrome}
    login_function.Login To System               ${valid_user.id}        ${valid_user.password}
    product_function.Add Product To Cart         ${product_name}
    cart_feature.Access To Cart Page
    cart_function.Access To Address Page
    address_function.Information Data            ${address_valid.firstname}    ${address_valid.lastname}    ${address_valid.zipcode}
    address_function.Access To Payment Page
    payment_function.Check Product Name          ${product_name}
    payment_function.Access To Finish Page
    finish_page.Success Order
    
*** comment ***