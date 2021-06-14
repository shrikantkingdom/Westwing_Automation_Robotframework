*** Settings ***
Documentation    WishListPage

*** Variables ***
${delete_product_wishlist_link}     xpath://ul[@class='listProducts']/li/button

*** Keywords ***
I delete the product from my wishlist
    log to console      Clicking on delete the product from wishlist page
    wait until element is visible       ${delete_product_wishlist_link}     timeout=${timeout_seconds}
    click element  ${delete_product_wishlist_link}
    wait until page does not contain element    ${delete_product_wishlist_link}     timeout=${timeout_seconds}
