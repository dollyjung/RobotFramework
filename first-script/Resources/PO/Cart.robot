*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Product Added
    wait until page contains  Added to Cart

Proceed to checkout
    click link  Proceed to checkout