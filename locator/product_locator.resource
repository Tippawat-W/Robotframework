*** Variable ***
${locator.product_name}              id=item_4_title_link
${locator.product_detail}
${locator.add_to_cart_item}          xpath=//div[text()="{product_name}"]/parent::a/parent::div/following-sibling::div/button[text()="Add to cart"]
${locator.remove_product_on_cart}    xpath=//div[text()="{product_name}"]/parent::a/parent::div/following-sibling::div/button[text()="Remove"]
${locator.cart_button}               id=shopping_cart_container
${locator.header}                    xpath=//div[@class="header_secondary_container"]/span[contains(text(),"Products")]