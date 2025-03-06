*** Setting ***
Resource    ${CURDIR}/../resource/import/import.robot
Resource    ${CURDIR}/../keywords/login_keywords.robot
Resource    ${CURDIR}/../keywords/product_keywords.robot
Resource    ${CURDIR}/../keywords/burger_navbar_keywords.robot
Test Teardown    Close Browser

*** Test Cases ***
Verify That System Can Login Success.
    [Tags]    LG_001    High
    Given Open Swag Labs Website With Chrome Browser
    When Login To The System With '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    Then Verify Access To Product Page Success

Verify That System Can Not Login When Use Invalid Id.
    [Tags]    LG_002    High
    Given Open Swag Labs Website With Chrome Browser
    When Login To The System With '${invalid_user.id}' And '${valid_user.password}'
    And Click Login Button
    Then Verify That System Login has Failed

Verify That System Can Not Login When Use Blank Id.
    [Tags]    LG_003    High
    Given Open Swag Labs Website With Chrome Browser
    When Login To The System With '${blank_user.id}' And '${valid_user.password}'
    And Click Login Button
    Then Verify That System Require Username

Verify That System Can Not Login When Use Invalid Password.
    [Tags]    LG_004    High
    Given Open Swag Labs Website With Chrome Browser
    When Login To The System With '${valid_user.id}' And ' ${invalid_user.password}'
    And Click Login Button
    Then Verify That System Login has Failed


Verify That System Can Not Login When Use Blank Password.
    [Tags]    LG_005    High
    Given Open Swag Labs Website With Chrome Browser
    When Login To The System With '${valid_user.id}' And '${blank_user.password}'
    And Click Login Button
    Then Verify That System Require Password

Verify That System Can Login Out Success.
    [Tags]    LG_006    High
    Given Open Swag Labs Website With Chrome Browser
    And Login To The System With '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    When Logout From System
    Then Verify That System Logout has Success