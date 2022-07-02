*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Switching Multiple Browsers
close browser

*** Keywords ***
Switching Multiple Browsers
    open browser    http://www.google.com/  chrome
    maximzie browser window

    sleep   3

    open browser    http://www.honda.ca/    chrome
    maximzie browser window


    # Switching multiple broswer starts from here:
    select browser  1           # <<< Select browser  1 >>>> is the key word and <<< 1 is index number >>> of browser
    ${title1}    = get title
    log to console  ${title1}

    select browser  2           # <<< Select Browser  2 >>> is the keyword & <<< 2 is index number >>> of browser
    ${title2}   = get title
    log to console  ${title2}
