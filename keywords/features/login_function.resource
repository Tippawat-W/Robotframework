*** Keywords ***
Login To System
    [Arguments]    ${id}    ${password}
    login_page.Input Username Id        ${id}
    login_page.Input Username Password        ${password}
    login_page.Click Button Login