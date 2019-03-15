*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${HOME} =  id=mainNav
#${HOME} =  css=#mainNav > div > div.navbar-header.page-scroll > a
#${SECTION_TEAM} =  css=#team > div > div:nth-child(1) > div > h2

*** Keywords ***
Load
    go to  ${URL}
    Log  Hi Front Office website !

Verify Page Loaded
    wait until page contains element  ${HOME}
    Log  verify the home page is correctly
    #wait until page contains element  ${SECTION_TEAM}