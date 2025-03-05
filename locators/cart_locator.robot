*** Variable ***
${cart_locator.checkout_button}    id=checkout
${cart_locator.continue_shop_button}    id=continue-shopping
${cart_locator.remove_button}    id=remove-{product_name}
${cart_locator.product_name}    xpath=//div[@class="inventory_item_name" and contains(text(),"{product_name}")]
${cart_locator.product_price}    xpath=//div[@class="inventory_item_price" and contains(text(),"$")]
${cart_locator.header}    xpath=//div[@class="header_secondary_container"]/span[contains(text(),"Your Cart")]