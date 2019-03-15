*** Settings ***

#robot -d Results\BuildIn -i log Scripts
*** Variables ***
${GLOBAL_VAR} =  This is available everywhere

*** Test Cases ***
Log Keyword from Build-In Library
    [Documentation]  This is logs
    [Tags]  log
    comment         #{unset_variable}
    comment         ${GLOBAL_VAR}
    log             Hi ! This is just a log
    log many        Many1  Many 2  Many y y y
    log to console  Hi Console !
    log             ${GLOBAL_VAR}
    log variables

Log Keyword from SeleniumLibrary
    set log level
    log location
    log dir
    log source
    log title
    log variables

Run Keyword from Build-In
    [Tags]  run
    run keyword and continue on failure

*** Keywords ***


