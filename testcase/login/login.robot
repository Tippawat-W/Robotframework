*** Setting ***
Resource        ${CURDIR}/../../resource/import/import.resource
Resource        ${CURDIR}/../../keywords/login_keywords.resource
Resource        ${CURDIR}/../../keywords/product_keywords.resource
Resource        ${CURDIR}/../../keywords/burger_navbar_keywords.resource
Test Teardown    Close Browser

*** Test Cases ***

Verify That System Can Login Success.
    [Tags]     LG_001    High
    Given Open Website    ${web_site.saucedemo}        ${web_broser.chrome}
    When Login To System is '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    Then Verify Access To Product Page Success

Verify That System Can Not Login When Use Invalid Id.
    [Tags]     LG_002    High
    Given Open Website    ${web_site.saucedemo}        ${web_broser.chrome}
    When Login To System is '${invalid_user.id}' And '${valid_user.password}'
    And Click Login Button
    Then Verify That System Is Login Failed

Verify That System Can Not Login When Use Blank Id.
    [Tags]     LG_003    High
    Given Open Website    ${web_site.saucedemo}        ${web_broser.chrome}
    When Login To System is '${blank_user.id}' And '${valid_user.password}'
    And Click Login Button
    Then Verify That System Is Require Id

Verify That System Can Not Login When Use Invalid Password.
    [Tags]     LG_004    High
    Given Open Website    ${web_site.saucedemo}        ${web_broser.chrome}
    When Login To System is '${valid_user.id}' And ' ${invalid_user.password}'
    And Click Login Button
    Then Verify That System Is Login Failed


Verify That System Can Not Login When Use Blank Password.
    [Tags]     LG_005    High
    Given Open Website    ${web_site.saucedemo}        ${web_broser.chrome}
    When Login To System is '${valid_user.id}' And '${blank_user.password}'
    And Click Login Button
    Then Verify That System Is Require Password

Verify That System Can Login Out Success.
    [Tags]     LG_006    High
    Given Open Website    ${web_site.saucedemo}        ${web_broser.chrome}
    And Login To System is '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    When Logout From System
    Then Verify That System Is Logout Success