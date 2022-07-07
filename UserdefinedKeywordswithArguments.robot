*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      http://newtours.demoaut.com/
${browser}  chrome

*** Test Cases ***
Test Case
    Launch Browser  ${url}  ${browser}           # User defined Keyword with Arguments
    input text  name:userName   abc123
    input text  name:password   xyz@123
close browser
#close all browser   #This command will close all the browser which are open

*** Keywords ***
Launch Browser          # Launch Browser is user defined keyword
    [Arguments]  ${appurl}  ${appbrowser}       # When we will pass arguments in Keyword command (Launch Browser)
                                                # in *** Test case ***, it will get captured in this arguments.
    open browser    ${appurl}  ${appbrowser}
    maximize window