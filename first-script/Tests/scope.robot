*** Settings ***
Resource  ../Resources/scopeGlobal.robot

*** Variables ***
${MY_VARIABLE} =  Some information from script file at global variable settings

*** Test Cases ***
Create and log a variable
    [Tags]  scope
    [Documentation]  Variable is case INsensitve, test for precedence
    #${my_variable} =  set variable  Some information
    #Log  ${my_variable}
    Log  ${MY_VARIABLE}

Access a variable
    [Tags]  scope
    #Log  ${my_variable}
    Log  ${MY_VARIABLE}

*** Keywords ***
