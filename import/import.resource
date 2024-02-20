*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime
Library    OperatingSystem

Resource    ${CURDIR}/import_variable.resource
Resource    ${CURDIR}/import_keyword.resource
Resource    ${CURDIR}/import_locator.resource
Variables    ${CURDIR}/../settings/setting.yaml
