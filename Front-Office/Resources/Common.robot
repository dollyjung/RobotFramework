*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    open browser  about:blank  ${BROWSER}
    maximize browser window

End Web Test
    close all browsers

Begin Suite
    Log  Start the test suite

End Suite
    Log  End of test suite