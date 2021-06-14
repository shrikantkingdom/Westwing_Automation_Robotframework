*** Settings ***
Documentation    HeaderPage
Library         Selenium2Library

*** Variables ***
${search_box}     xpath://input[@type='search']
${wishlist_counter_icon}     xpath://span[@data-testid='wishlist-counter']

*** Keywords ***
I search for item ${searchitem}
    log to console      Searching the item  ${searchitem}
    input text      ${search_box}       ${searchitem}
    press keys      ${search_box}       ENTER

Wishlist counter is displayed with product ${number}
    log to console      verifying wishist counter in the website header shows 1
    element text should be  ${wishlist_counter_icon}     ${number}

I go to the wishlist page
    log to console      Clicking on wishlict icon
    click element  ${wishlist_counter_icon}
