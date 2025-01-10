*** Variable ***
${payment_locator.finish_button}                   id=finish
${payment_locator.cancel_button}                   id=cancel
${payment_locator.product_name}                   xpath=//div[@class="inventory_item_name" and contains(text(),"{product_name}")]
${payment_locator.product_price}                  xpath=//div[@class="inventory_item_price" and contains(text(),"$")]
${payment_locator.item_total}                     xpath=//div[@class="summary_subtotal_label" and contains(text(),"Item total")]
${payment_locator.tax}                            xpath=//div[@class="summary_tax_label" and contains(text(),"Tax")]
${payment_locator.total}                          xpath=//div[@class="summary_info_label summary_total_label" and contains(text(),"Total")]
${payment_locator.header}                         xpath=//div[@class="header_secondary_container"]/span[contains(text(),"Checkout: Overview")]
