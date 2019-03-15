*** Settings ***
Resource  ./PO/home.robot
Resource  ./PO/menu.robot
Resource  ./PO/team.robot

*** Keywords ***
Go to home page
    home.Load
    home.Verify Page Loaded

Go to "Team" section
    menu.Click "Team" Menu
    team.Verify "Team" Loaded

Verify "Team" section
    team.Vadilate "Team" section header

