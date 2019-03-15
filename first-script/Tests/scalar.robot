*** Settings ***


*** Variables ***
${MY_VARIABLE} =  Hello there !

*** Test Cases ***
Set a variable in the test case
    [Tags]  scalar
    ${my_new_variable} =  set variable  My new variable
    Log  ${my_new_variable}

Variable demonstration
    [Tags]  scalar
    Log  ${MY_VARIABLE}

Variable demonstration 2
    [Tags]  scalar
    Log  ${MY_VARIABLE}


*** Keywords ***

