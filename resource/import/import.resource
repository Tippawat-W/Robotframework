*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime
Library    OperatingSystem
Library    BuiltIn

Resource        ${CURDIR}/../../keywords/common_keywords.resource
Resource        ${CURDIR}/../../locators/login_locator.resource
Resource        ${CURDIR}/../../locators/product_locator.resource
Resource        ${CURDIR}/../../locators/address_locator.resource
Resource        ${CURDIR}/../../locators/cart_locator.resource
Resource        ${CURDIR}/../../locators/payment_locator.resource
Resource        ${CURDIR}/../../locators/finish_locator.resource
Resource        ${CURDIR}/../../locators/product_detail_locator.resource
Resource        ${CURDIR}/../../locators/burger_navbar_locator.resource
Resource        ${CURDIR}/../../locators/cart_navbar_locator.resource

Variables        ${CURDIR}/../../testdata/${env}/setting.yaml
Variables        ${CURDIR}/../../testdata/${env}/browser.yaml
Variables        ${CURDIR}/../../testdata/${env}/id_login.yaml
Variables        ${CURDIR}/../../testdata/${env}/website.yaml
Variables        ${CURDIR}/../../testdata/${env}/product.yaml
Variables        ${CURDIR}/../../testdata/${env}/address.yaml


*** Variables ***
${env}      dev


*** Comments ***

Variables        ${CURDIR}/../../testdata/locators/login_locator.yaml
Variables        ${CURDIR}/../../testdata/locators/product_locator.yaml
Variables        ${CURDIR}/../../testdata/locators/address_locator.yaml
Variables        ${CURDIR}/../../testdata/locators/cart_locator.yaml
Variables        ${CURDIR}/../../testdata/locators/payment_locator.yaml
Variables        ${CURDIR}/../../testdata/locators/finish_locator.yaml
Variables        ${CURDIR}/../../testdata/locators/product_detail_locator.yaml
Variables        ${CURDIR}/../../testdata/locators/burger_navbar_locator.yaml
Variables        ${CURDIR}/../../testdata/locators/cart_navbar_locator.yaml