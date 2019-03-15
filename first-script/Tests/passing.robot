*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
User can serach for products
    [Tags]  passing
    @{url_and_browser} =  set variable  http://www.google.com  chrome
    Begin Web Test  @{url_and_browser}
    #Begin Web Test  http://www.amazon.com  chrome

*** Keywords ***
Begin Web Test
    #[Arguments]  ${url}  ${browser}
    [Arguments]  @{url_and_browser}
    open browser  @{url_and_browser}[0]  @{url_and_browser}[1]
    #open browser  ${url}  ${browser}
    close browser
