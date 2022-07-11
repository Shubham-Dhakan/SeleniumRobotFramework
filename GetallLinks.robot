*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.honda.ca/

*** Test Cases ***
${implicit wait} = get selenium implicit wait
log to console  ${implicit wait}
Get all Links
close browser

*** keywords ***
Get all Links
    open browser    ${url} ${browser}
    maximize window

    ${capturealllinks}  get element count   xpath://a       # capture total number of links
    log to console  ${capturealllinks}                      # display length of links

    @{linktxt}  create list                 # Syntax of creating list -- use " @{list} "
    : FOR ${l}  IN RANGE   ${capturealllinks}+1               # For loop syntax in robot framework
    \   @{linktxt} get text xpath:(//a)[${l}]           # This will copy the link element text of HTML CODE.
    \   log to console  @{linktxt}