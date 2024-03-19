*** Setting ***
Resource    ${CURDIR}/../../import/import.resource
Test Setup     Open Browser    ${web_site.saucedemo}        ${web_broser.chrome}
Test Teardown

*** Test Cases ***

login success
    [Tags]     LG_001
    login_function.login to system       ${valid_user.id}        ${valid_user.password}
    product_page.verify access to product page success

login failed invalid id
    [Tags]     LG_002
    login_function.login to system       ${invalid_user.id}        ${valid_user.password}
    login_page.login failed

login blank id
    [Tags]     LG_003
    login_function.login to system       ${blank_user.id}        ${valid_user.password}
    login_page.require id

login failed invalid password
    [Tags]     LG_004
    login_function.login to system       ${valid_user.id}        ${invalid_user.password}
    login_page.login failed

login blank password
    [Tags]     LG_005
    login_function.login to system       ${valid_user.id}        ${blank_user.password}
    login_page.require password

login out
    [Tags]     LG_006
    login_function.login to system       ${valid_user.id}        ${valid_user.password}
    product_page.verify access to product page success
    burger_feature.logout from system
    login_page.login out success