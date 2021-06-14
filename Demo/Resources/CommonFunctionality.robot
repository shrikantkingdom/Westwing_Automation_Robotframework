*** Settings ***
Documentation    CommonFunctionality
Library         Selenium2Library

*** Variables ***
${url}         https://www.westwingnow.de/
${browser}         Chrome
${cookies_btn}      xpath://*[@id="onetrust-accept-btn-handler"]
${timeout_seconds}      10

*** Keywords ***
Start TestCase
    log to console      Opening browser
    open browser  ${url}        ${browser}
    log to console      Maximizing Browser Window
    maximize browser window
    log to console      Accepting the cookies
    wait until page contains element  ${cookies_btn}      timeout=${timeout_seconds}
    click button  ${cookies_btn}
Finish TestCase
    close all browsers
