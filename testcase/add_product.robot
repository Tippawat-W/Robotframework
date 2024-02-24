*** Setting ***
Resource    ${CURDIR}/../import/import.resource
Suite Setup     Open Browser    ${web_site.saucedemo}        ${web_broser.chrome}

*** Test Cases ***
add product to cart
    login_function.login to system       ${valid_user.id}        ${valid_user.password}
    product_function.add product to cart    ${product_name.no_1}

remove product    
    product_function.remove product out of cart    ${product_name.no_1}


*** Comments ***

add product to cart
    login_function.login to system       ${valid_user.id}        ${valid_user.password}
    FOR    ${values}    IN  @{product_name.values()}
        product_function.add product to cart         ${values}
    END
    