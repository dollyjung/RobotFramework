*** Settings ***
Documentation  This is some basic info about the whole suite
#Library  SeleniumLibrary
Resource  ../Resources/Common.robot
Resource  ../Resources/AmazonApp.robot
Suite Setup  Common.Insert Testing Data
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Common.Cleanup Testing Data

*** Variables ***
${BROWSER} =  Chrome
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  Dark Filter 52

*** Test Cases ***
Logged out user should be able to search for products
    [Documentation]  This is some basic info about the test
    [Tags]  current
    AmazonApp.Search for Products

Logged out user should be able to view a product
    [Tags]  amazon
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results

Logged out user should be able to add product to cart
    [Tags]  amazon
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart

Logged out user should be asked to sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  amazon
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout


Logged out user must sign in to check out
    [Tags]  gherkin
    Given  User is not logged in
    And  Searchs for products
    And  search results contains relevant products
    And  user selects a prodcut from search results
    And  correct product page loads
    And  user adds the product to their cart
    And  the product is present in cart
    When  user attempts to checkout
    Then  the user is required to sign in
