*** Keywords ***
Login To System is '${id}' And '${password}'
    login_page.Input Username Id        ${id}
    login_page.Input Username Password        ${password}
    #login_page.Click Login Button

Login To System
    [Arguments]    ${id}    ${password}
    login_page.Input Username Id        ${id}
    login_page.Input Username Password        ${password}
    login_page.Click Login Button

*** Comments ***



    