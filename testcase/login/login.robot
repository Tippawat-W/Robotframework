*** Setting ***
Resource    ${CURDIR}/../../import/import.resource
Test Setup     Open Browser    ${web_site.saucedemo}        ${web_broser.chrome}
Test Teardown

*** Test Cases ***

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