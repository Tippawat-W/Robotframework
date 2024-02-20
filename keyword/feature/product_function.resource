*** keyword ***
add product to cart
    [Arguments]        ${product_name}
    product_page.add item to cart                 ${product_name}
    product_page.verify add to cart button change to remove correct         ${product_name}
    
remove product out of cart
    [Arguments]        ${product_name}
    product_page.remove item from cart                 ${product_name}
    product_page.verify remove from cart button change to add correct            ${product_name}

access to cart page
    product_page.click cart button
    cart_page.verify access to cart page success