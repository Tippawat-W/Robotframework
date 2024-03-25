*** Setting ***
Resource    ${CURDIR}/../../import/import.resource
Suite Setup     Open Browser    ${web_site.saucedemo}        ${web_broser.chrome}
Suite Teardown    Close Browser

*** Test Cases ***

Verify that user can add product to cart when user click Add to cart button on product list page.
    [Tags]              PL_006
    login_function.login to system       ${valid_user.id}        ${valid_user.password}
    product_function.add product to cart         ${product_name}

Verify that user can remove product from cart when user click Remove button on product list page.
    [Tags]              PL_007
    product_function.remove product out of cart    ${product_name}

Verify that system rediect to product detail page when click product name
    [Tags]              PL_008
    product_function.access to detail page by product name         ${product_name.no_1}
    product_detail_function.back to product list page

Verify that system rediect to product detail page when click product image
    [Tags]              PL_009
    product_function.access to detail page by product image         ${product_name.no_1}





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
