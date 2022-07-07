*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      http://newtours.demoaut.com/
${browser}  chrome

*** Test Cases ***
Test Case
    Launch Browser           # User defined Keyword with No arguments
    input text  name:userName   abc123
    input text  name:password   xyz@123
close browser
#close all browser   #This command will close all the browser which are open

*** Keywords ***
Launch Browser          # Launch Browser is user defined keyword
    open browser    ${url}  ${browser}
    maximize window