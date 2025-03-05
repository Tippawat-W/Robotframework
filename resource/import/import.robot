*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime
Library    OperatingSystem
Library    BuiltIn

Resource    ${CURDIR}/../../keywords/common_keywords.robot
Resource    ${CURDIR}/../../locators/login_locator.robot
Resource    ${CURDIR}/../../locators/product_locator.robot
Resource    ${CURDIR}/../../locators/address_locator.robot
Resource    ${CURDIR}/../../locators/cart_locator.robot
Resource    ${CURDIR}/../../locators/payment_locator.robot
Resource    ${CURDIR}/../../locators/finish_locator.robot
Resource    ${CURDIR}/../../locators/product_detail_locator.robot
Resource    ${CURDIR}/../../locators/burger_navbar_locator.robot
Resource    ${CURDIR}/../../locators/cart_navbar_locator.robot

Variables    ${CURDIR}/../configs/common_configs.yaml
Variables    ${CURDIR}/../configs/${env}/env_config.yaml
Variables    ${CURDIR}/../../testdata/common/test_data.yaml
Variables    ${CURDIR}/../../testdata/${env}/test_data.yaml

*** Variables ***
${env}    dev