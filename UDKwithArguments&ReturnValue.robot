*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resource.robot                   # This is A Resource keyword file
                                                        # Saving keyword in separate resouce file to use it in multiple
                                                        # files, it is a kind library file
                                                        # we have to call it in *** settings *** section.

*** Variables ***
${url}      http://newtours.demoaut.com/
${browser}  chrome

*** Test Cases ***
Test Case
    ${pagetitle} = Launch Browser  ${url}  ${browser}       # User defined Keyword with Arguments
    log to console  ${pagetitle}                            # It will display the title
    input text  name:userName   abc123
    input text  name:password   xyz@123
close browser
#close all browser   #This command will close all the browser which are open