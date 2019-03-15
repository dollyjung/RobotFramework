*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_HEADING} =  xpath=//h1

*** Keywords ***
Verify Page Loaded
    page should contain element  ${SIGNIN_MAIN_HEADING}
    ELEMENT TEXT SHOULD BE  ${SIGNIN_MAIN_HEADING}  Sign In
