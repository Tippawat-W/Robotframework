*** Setting ***
Resource    ${CURDIR}/../../import/import.resource
Suite Setup     Open Browser    ${web_site.saucedemo}        ${web_broser.chrome}
Test Setup     Open Browser    ${web_site.saucedemo}        ${web_broser.chrome}

*** Test Cases ***
login blank id
    login_function.login to system       ${blank_user.id}        ${valid_user.password}
    login_page.require id

login blank password
    login_function.login to system       ${valid_user.id}        ${blank_user.password}
    login_page.require password

login failed
    login_function.login to system       ${invalid_user.id}        ${invalid_user.password}
    login_page.login failed

login success
    login_function.login to system       ${valid_user.id}        ${valid_user.password}
    product_page.verify access to product page success

login out
    login_function.login to system       ${valid_user.id}        ${valid_user.password}
    product_page.verify access to product page success
    burger_feature.logout from system
    login_page.login out success