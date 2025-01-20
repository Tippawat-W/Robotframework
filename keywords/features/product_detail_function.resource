*** Variables ***
${number of product}    0

*** Keywords ***
Back To Product List Page
    product_detail_page.Click Back To Products Button
    product_page.Verify Access To Product Page Success  

Add Product To Cart
    product_detail_page.Add Item To Cart
    product_detail_page.Verify Add To Cart Button Change To Remove Correct
    ${number of product}=        Convert To Integer    ${number of product}
    ${number of product}=    Evaluate    ${number of product} + 1
    cart_navbar.Verify Number Of Product Add To Cart    ${number of product}
    Set Suite Variable        ${number of product}         ${number of product}

Remove Product Out Of Cart
    product_detail_page.Remove Item From Cart
    product_detail_page.Verify Remove From Cart Button Change To Add Correct
    ${number of product}=        Convert To Integer    ${number of product}
    ${number of product}=    Evaluate    ${number of product} - 1
    Run Keyword If    ${number of product} != 0         cart_navbar.Verify Number Of Product Add To Cart    ${number of product}
    ...    ELSE    cart_navbar.Verify Remove All Number Of Product On Cart            ${number of product}