# Westwing_Automation_Robotframework
Example
Below is a simple example test case for testing E2E flow to add a product to the wishlist. 

** Settings ***
Documentation       Basic search functionality
Library         Selenium2Library
Library         BuiltIn
Resource         ../resources/PageObjects/HeaderPage.robot
Resource         ../resources/PageObjects/SearchResultsPage.robot
Resource         ../resources/PageObjects/ProductDetailsPage.robot
Resource         ../resources/PageObjects/LandingPage.robot
Resource         ../resources/PageObjects/WishListPage.robot
Resource         ../resources/CommonFunctionality.robot

Test Setup      CommonFunctionality.Start TestCase
Test Teardown       CommonFunctionality.Finish TestCase

*** Variables ***
${timeout_seconds}      10
${searchitem}       möbel

*** Test Cases ***
Verify basic search functionality
    [Documentation]     This test case verifies the basic search
    [Tags]      Functional

    Given I am on the WestwingNow home page
    When I search for item ${searchitem}
    Then I should see the login/registration overlay
    And I log in with valid username and password
    Then I should see product listing page with a list of products
    When I add the product to the wishlist
    Then Product should be added to the wishlist
    And I go to the wishlist page
    And I delete the product from my wishlist

    
## To install the libraries, use:
# pip -r requirements.txt

#Command to run the wishlist test:
#python -m robot Demo\Tests\wishlist_test.robot
