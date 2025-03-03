*** Keywords ***
Information '${firstname}' and '${lastname}' and '${zipcode}' Data
    address_page.Input Firstname            ${firstname}
    address_page.Input Lastname             ${lastname}
    address_page.Input Zipcode               ${zipcode}

Access To Payment Page
    address_page.Click Continue Button
    payment_page.Verify Access To Payment Page Success

#I think all of keywords in folder features should move to each page keywords