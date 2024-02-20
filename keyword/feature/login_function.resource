*** keyword ***
login to system
    [Arguments]    ${id}    ${password}
    login_page.input username id        ${id}
    login_page.input username password        ${password}
    login_page.click button login