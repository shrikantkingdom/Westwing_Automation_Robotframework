*** Settings ***
Documentation    SearchResultsPage
Library         Selenium2Library
Resource        ./HeaderPage.robot
Resource         ../resources/PageObjects/LandingPage.robot
Resource         ../resources/PageObjects/HeaderPage.robot

*** Variables ***
${list_of_products}     xpath://div[@data-testid='generic-product']
${add_to_wishlist_icon}     xpath://div[@data-testid='wishlist-icon']
${products_wishlist_icon}     xpath://div[@data-testid='wishlist-icon']/*[name()='svg']

*** Keywords ***

I should see product listing page with a list of products
    log to console      verifying that one or more than one products are displayed on the list page
    ${listOfProducts} =     get element count  ${list_of_products}
    Should Be True  ${listOfProducts} >= 1

I add the product to the wishlist
    log to console      Adding the product to wishlist
    wait until element is not visible   ${login_window}       timeout=${timeout_seconds}
    set focus to element  ${add_to_wishlist_icon}
    click element  ${add_to_wishlist_icon}

Product should be added to the wishlist
    log to console      verifying wishist icon on the product is filled in
    sleep   2
    element attribute value should be  ${products_wishlist_icon}        data-is-selected        true
    Wishlist counter is displayed with product 1
