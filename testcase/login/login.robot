*** Setting ***
Resource    ${CURDIR}/../../import/import.resource
Test Teardown    Close Browser

*** Test Cases ***

Verify That System Can Login Success.
    [Tags]     LG_001
    Given Open Website    ${web_site.saucedemo}        ${web_broser.chrome}
    When Login To System is '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    Then Verify Access To Product Page Success

Verify That System Can Not Login When Use Invalid Id.
    [Tags]     LG_002
    Given Open Website    ${web_site.saucedemo}        ${web_broser.chrome}
    When Login To System is '${invalid_user.id}' And '${valid_user.password}'
    And Click Login Button
    Then Verify That System Is Login Failed

Verify That System Can Not Login When Use Blank Id.
    [Tags]     LG_003
    Given Open Website    ${web_site.saucedemo}        ${web_broser.chrome}
    When Login To System is '${blank_user.id}' And '${valid_user.password}'
    And Click Login Button
    Then Verify That System Is Require Id

Verify That System Can Not Login When Use Invalid Password.
    [Tags]     LG_004
    Given Open Website    ${web_site.saucedemo}        ${web_broser.chrome}
    When Login To System is '${valid_user.id}' And ' ${invalid_user.password}'
    And Click Login Button
    Then Verify That System Is Login Failed


Verify That System Can Not Login When Use Blank Password.
    [Tags]     LG_005
    Given Open Website    ${web_site.saucedemo}        ${web_broser.chrome}
    When Login To System is '${valid_user.id}' And '${blank_user.password}'
    And Click Login Button
    Then Verify That System Is Require Password

Verify That System Can Login Out Success.
    [Tags]     LG_006
    Given Open Website    ${web_site.saucedemo}        ${web_broser.chrome}
    And Login To System is '${valid_user.id}' And '${valid_user.password}'
    And Click Login Button
    And Verify Access To Product Page Success
    When Logout From System
    Then Verify That System Is Logout Success


*** Comments ***
Verify That System Can Login Success.
    [Tags]     LG_001
    login_function.Login To System       ${valid_user.id}        ${valid_user.password}
    product_page.Verify Access To Product Page Success

Verify That System Can Not Login When Use Invalid Id.
    [Tags]     LG_002
    login_function.Login To System       ${invalid_user.id}        ${valid_user.password}
    login_page.Login Failed

Verify That System Can Not Login When Use Blank Id.
    [Tags]     LG_003
    login_function.Login To System       ${blank_user.id}        ${valid_user.password}
    login_page.Require Id

Verify That System Can Not Login When Use Invalid Password.
    [Tags]     LG_004
    login_function.Login To System       ${valid_user.id}        ${invalid_user.password}
    login_page.Login Failed

Verify That System Can Not Login When Use Blank Password.
    [Tags]     LG_005
    login_function.Login To System       ${valid_user.id}        ${blank_user.password}
    login_page.Require Password

Verify That System Can Login Out Success.
    [Tags]     LG_006
    login_function.Login To System       ${valid_user.id}        ${valid_user.password}
    product_page.Verify Access To Product Page Success
    burger_feature.Logout From System
    login_page.Login Out Success