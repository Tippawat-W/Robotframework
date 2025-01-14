*** Variable ***
${locator.product_name}                          xpath=//div[@class="inventory_item_name " and text()="{product_name}"]
${locator.product_image}                         xpath=//div/a/img[@alt="{product_name}"]
${locator.add_to_cart_item}                      id=add-to-cart-{product_name}
${locator.remove_product_on_cart}                id=remove-{product_name}
${locator.cart_button}                           id=shopping_cart_container
${locator.header}                                xpath=//div[@class="header_secondary_container"]/span[contains(text(),"Products")]


*** Comments ***
${locator.add_to_cart_item}          xpath=//div[text()="{product_name}"]/parent::a/parent::div/following-sibling::div/button[text()="Add to cart"]
${locator.remove_product_on_cart}    xpath=//div[text()="{product_name}"]/parent::a/parent::div/following-sibling::div/button[text()="Remove"]