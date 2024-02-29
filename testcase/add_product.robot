*** Setting ***
Resource    ${CURDIR}/../import/import.resource
Suite Setup     Open Browser    ${web_site.saucedemo}        ${web_broser.chrome}
Suite Teardown    Close Browser

*** Variables ***
${number of product}    0

*** Test Cases ***
add product to cart
    login_function.login to system       ${valid_user.id}        ${valid_user.password}
    FOR    ${values}    IN  @{product_name.values()}
        product_function.add product to cart         ${values}
        ${number of product}=        Convert To Integer    ${number of product}
        ${number of product}=    Evaluate    ${number of product} + 1
        cart_navbar.verify number of product add to cart    ${number of product}
    END
    Set Global Variable        ${number of product}         ${number of product}

remove product
    FOR    ${values}    IN  @{product_name.values()}    
        product_function.remove product out of cart    ${values}
        ${number of product}=        Convert To Integer    ${number of product}
        ${number of product}=    Evaluate    ${number of product} - 1
        Run Keyword If    ${number of product} != 0         cart_navbar.verify number of product add to cart    ${number of product}
        ...    ELSE    cart_navbar.verify remove all number of product on cart            ${number of product}
    END


*** Comments ***

cart_navbar.verify number of product add to cart    ${values}

add product to cart
    login_function.login to system       ${valid_user.id}        ${valid_user.password}
    product_function.add product to cart    ${product_name.no_1}
    
remove product    
    product_function.remove product out of cart    ${product_name.no_1}


add product to cart
    login_function.login to system       ${valid_user.id}        ${valid_user.password}
    FOR    ${key}    ${values}    IN  &{product_name}
        product_function.add product to cart         ${values}
        ${number of product}=        Convert To Integer    ${number of product}
        ${number of product}=    Evaluate    ${number of product} + 1
    END
    cart_navbar.verify number of product add to cart    ${number of product}


remove product
    FOR    ${values}    IN  @{product_name.values()}    
        product_function.remove product out of cart    ${values}
        ${number of product}=        Convert To Integer    ${number of product}
        ${number of product}=    Evaluate    ${number of product} - 1
        Run Keyword If    ${number of product} != 0         cart_navbar.verify number of product add to cart    ${number of product}
        ...    ELSE    cart_navbar.verify remove all number of product on cart            ${number of product}
    END
