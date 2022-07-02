*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
open browser    ${url}  ${browser}
maximize browser window

Testing alerts
close browser
#close all browser                  #This will close all browser

*** Keywords ***
Testing alerts
    click element   xpath://button[normalize-space()='Click Me']        #opens alert
    sleep   5
    handle alert accept     #This will close the alert prompt with pressing <<< accept >>>
    #handle alert dismiss   #This will close the alert promt with pressing <<<cancel >>>

    #handle alert   leave   #This will open the alert but it wont close it and leave it as it is.

    #alert should be present  Press a button!   #This will close the alert after verifying with browser txt.*** Variables ***
    #alert should not be present     Press a button!     #This will throw error as the given text is present
                                                        # on website alert prompt
