*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open browser  about:blank  ${BROWSER}
    Maximize browser window

End Web Test
    close browser

Insert Testing Data
    Log  I am setting up the test data...

Cleanup Testing Data
    Log  I am cleaning up the test data...