*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime
Library    OperatingSystem
Library    BuiltIn

Resource    ${CURDIR}/../../keywords/features/common_function.resource

Resource        ${CURDIR}/../../locators/login_locator.resource
Resource        ${CURDIR}/../../locators/product_locator.resource
Resource        ${CURDIR}/../../locators/address_locator.resource
Resource        ${CURDIR}/../../locators/cart_locator.resource
Resource        ${CURDIR}/../../locators/payment_locator.resource
Resource        ${CURDIR}/../../locators/finish_locator.resource
Resource        ${CURDIR}/../../locators/product_detail_locator.resource

Resource        ${CURDIR}/../../component/locator/burger_locator.resource
Resource        ${CURDIR}/../../component/locator/cart_locator.resource

Variables        ${CURDIR}/../../settings/setting.yaml
Variables        ${CURDIR}/../../testdata/browser.yaml
Variables        ${CURDIR}/../../testdata/id_login.yaml
Variables        ${CURDIR}/../../testdata/website.yaml
Variables        ${CURDIR}/../../testdata/product.yaml
Variables        ${CURDIR}/../../testdata/address.yaml