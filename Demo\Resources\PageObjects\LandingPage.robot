*** Settings ***
Documentation    LandingPage
Library         Selenium2Library

*** Variables ***
${title}         Ihr Möbel & Interior Online-Shop | WestwingNow
${timeout_seconds}         10
${login_window}     xpath://div[@data-testid='shop-to-club-popup-wrapper']/div
${username}         shrikant007@hotmail.com
${password}         Admin@123
${username_txtbox}      name:email
${password_txtbox}      name:password
${tnc_checkbox}     xpath://input[@type='checkbox']
${submit_btn}       xpath://button[@type='submit']

*** Keywords ***
I am on the WestwingNow home page
    log to console      Verifying the page title
    title should be     ${title}

I should see the login/registration overlay
    log to console      Verifying if the login window is displayed
    wait until element is visible   ${login_window}       timeout=${timeout_seconds}

I log in with valid username and password
    log to console      Logging in with the valid username and password
    input text      ${username_txtbox}   ${username}
    input text      ${password_txtbox}   ${password}
    click button    ${tnc_checkbox}
    click button    ${submit_btn}
