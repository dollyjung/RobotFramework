*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SECTION_TEAM} =  css=#team > div > div:nth-child(1) > div > h2

*** Keywords ***
Verify "Team" Loaded
    wait until page contains element  ${SECTION_TEAM}
    Log  here we are team section !

Vadilate "Team" section header
    ${elementText} =  get text  ${SECTION_TEAM}
    should be equal as strings  ${elementText}  Our Amazing Team  ignore_case=true

    #element text should be  ${SECTION_TEAM}  Our Amazing Team
