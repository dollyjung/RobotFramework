*** Settings ***
Documentation  Amazon top navigation
Library  SeleniumLibrary

*** Variables ***
&{TOPNAV_SEARCH_BAR} =      id=twotabsearchtextbox
&{TOPNAV_SEARCH_BUTTON} =   css:#nav-search > form > div.nav-right > div > input

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    input text  &{TOPNAV_SEARCH_BAR}  ${SEARCH_TERM}

Submit Search
    click button  &{TOPNAV_SEARCH_BUTTON}
