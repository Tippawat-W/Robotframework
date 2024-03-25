*** Setting ***
Resource    ${CURDIR}/../../import/import.resource
Test Setup     Open Browser    ${web_site.saucedemo}        ${web_broser.chrome}
Test Teardown

*** Test Cases ***

verify that system can login success
    [Tags]     LG_001
    login_function.login to system       ${valid_user.id}        ${valid_user.password}
    product_page.verify access to product page success

verify that system can not login when use invalid id
    [Tags]     LG_002
    login_function.login to system       ${invalid_user.id}        ${valid_user.password}
    login_page.login failed

verify that system can not login when use blank id
    [Tags]     LG_003
    login_function.login to system       ${blank_user.id}        ${valid_user.password}
    login_page.require id

verify that system can not login when use invalid password
    [Tags]     LG_004
    login_function.login to system       ${valid_user.id}        ${invalid_user.password}
    login_page.login failed

verify that system can not login when use blank password
    [Tags]     LG_005
    login_function.login to system       ${valid_user.id}        ${blank_user.password}
    login_page.require password

verify that system can login out success
    [Tags]     LG_006
    login_function.login to system       ${valid_user.id}        ${valid_user.password}
    product_page.verify access to product page success
    burger_feature.logout from system
    login_page.login out success