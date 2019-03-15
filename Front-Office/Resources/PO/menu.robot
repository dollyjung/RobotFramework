*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${MENU_TEAM} =  xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a

*** Keywords ***
Click "Team" Menu
    #click link  Team
    click link  ${MENU_TEAM}
    #click element  ${menu_team}
    #sleep  3s
    Log  Choose the team menu
