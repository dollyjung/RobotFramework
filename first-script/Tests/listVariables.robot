*** Settings ***


*** Variables ***
@{my_variable} =  Hello there  This is 2  I am 3

*** Test Cases ***
Variable demonstration
    [Tags]  list
    log  @{my_variable}[0]
    log  @{my_variable}[1]
    log  @{my_variable}[2]

Variable demonstration 2
    [Tags]  list2
    #@{my_list_variable} =  set variable  item1  item2  item3
    @{my_list_variable} =  create list  item1  item2  item3
    log  @{my_list_variable}[0]
    log  @{my_list_variable}[1]
    log  @{my_list_variable}[2]

*** Keywords ***
