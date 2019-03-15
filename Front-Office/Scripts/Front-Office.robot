*** Settings ***
Documentation  Testing on Front Office website from robotframeworktutorial by RYAN
Resource  ../Resources/common.robot
Resource  ../Resources/OfficeApp.robot
Suite Setup  Common.Begin Suite
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Common.End Suite

#robot -d Results -i web Scripts

*** Variables ***
${BROWSER} =  Chrome
${URL} =  http://www.robotframeworktutorial.com/front-office/
#${}

*** Test Cases ***
User should be able to access website
    [Documentation]  This is automation testing for simulation Front-Office website
    [Tags]  current
    OfficeApp.Go to home page

User should be able to go to "Team" section
    [Documentation]  We are going to access the team section
    [Tags]  web
    OfficeApp.Go to home page
    OfficeApp.Go to "Team" section

The team section header is displayed correctly
    [Documentation]  We are at the right team section
    [Tags]  web2
    OfficeApp.Go to home page
    OfficeApp.Go to "Team" section
    OfficeApp.Verify "Team" section
