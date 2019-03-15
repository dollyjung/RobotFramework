*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Page Loaded
    wait until page contains   Back to results

Add to Cart
    CLICK BUTTON  id=add-to-cart-button
