*** Settings ***
Resource        ${CURDIR}/../keywords/features/login_function.resource
Resource        ${CURDIR}/../keywords/features/product_function.resource
Resource        ${CURDIR}/../keywords/features/common_function.resource
Resource        ${CURDIR}/../keywords/features/cart_function.resource
Resource        ${CURDIR}/../keywords/features/address_function.resource
Resource        ${CURDIR}/../keywords/features/payment_function.resource
Resource        ${CURDIR}/../keywords/features/product_detail_function.resource

Resource        ${CURDIR}/../keywords/pages/login_page.resource
Resource        ${CURDIR}/../keywords/pages/product_page.resource
Resource        ${CURDIR}/../keywords/pages/cart_page.resource
Resource        ${CURDIR}/../keywords/pages/address_page.resource
Resource        ${CURDIR}/../keywords/pages/payment_page.resource
Resource        ${CURDIR}/../keywords/pages/finish_page.resource
Resource        ${CURDIR}/../keywords/pages/product_detail_page.resource

Resource        ${CURDIR}/../component/keywords/features/burger_feature.resource
Resource        ${CURDIR}/../component/keywords/features/cart_feature.resource

Resource        ${CURDIR}/../component/keywords/pages/burger_navbar.resource
Resource        ${CURDIR}/../component/keywords/pages/cart_navbar.resource
