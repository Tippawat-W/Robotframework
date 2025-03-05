*** Variable ***
${locator.product_name}    xpath=//div[@class="inventory_item_name " and text()="{product_name}"]
${locator.product_image}    xpath=//div/a/img[@alt="{product_name}"]
${locator.add_to_cart_item}    id=add-to-cart-{product_name}
${locator.remove_product_on_cart}    id=remove-{product_name}
${locator.cart_button}    id=shopping_cart_container
${locator.header}    xpath=//div[@class="header_secondary_container"]/span[contains(text(),"Products")]