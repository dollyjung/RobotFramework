*** Settings ***

#robot -d Results\Dialogs -i dialogs Scripts
*** Variables ***
${BROWSER} =  chrome

*** Test Cases ***
Dialogs Library Test
    [Tags]  dialogs
    #${user} =  get selection from user  Select desired user role  Supervisor  Agent  User
    #log  ${user}
    #${fav} =  get selections from user  Your favourites Coffee?  Short black  Long black  Americano  Latte  Cappuchino  Mocha  None of them
    #log  ${fav}
    ${new_browser} =  get selection from user  Select browser to use  Edge  Firefox  Chrome
    set global variable  ${BROWSER}  ${new_browser}
    open browser  about:blank   ${BROWSER}
    #execute manual step    Do it manually !  It's okay:) We will find out.
    #pause execution  Wait a minute -> Almost there
    ${input_username} =  get value from user  username to test please  default
    ${input_password} =  get value from user  password please  hidden=yes
    go to  http://www.google.com
    input text  xpath=//*[@class="gLFyf gsfi"]  ${input_username}
    log to console  hidden password: ${input_password}

*** Keywords ***
