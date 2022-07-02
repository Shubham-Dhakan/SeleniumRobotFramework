*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          http://demo.automationtesting.in/Windows.html

*** Test Cases ***
open browser        ${url}  ${browser}
Handling Tab Window

close browser
#close all browser      #this will close all browser which are open

*** Keywords ***
Handling Tab Window
    click element       xpath://a[@href='http://www.selenium.dev']//button[@class='btn btn-info'][normalize-space()='click']

    # handling tabbed windows concept:
    select window       Frames & windows        # <<< select window >>> is keyword to open new tab window
                                                # in select window --> we can use title, url or name to
                                                # open new tabbed window.
    click element       xpath://a[@class='selenium-button selenium-webdriver text-uppercase font-weight-bold']
