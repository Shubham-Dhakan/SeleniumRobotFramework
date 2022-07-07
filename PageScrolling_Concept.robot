*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
open browser    ${url}  ${browser}
maximize window
${wait} = get implicit wait                 # verifying Implicit wait which is --> 0 Seconds
log to console  ${wait}                     # Printing default implicit wait
Scrolling Page

${wait} = get implicit wait
log to console  ${wait}
close browser                               # Will close single browser
#close all browser                          # Will close all open broswer


*** Keywords ***
Scrolling Page
    set implicit wait   10                  # setting implicit wait --> 10 Seconds
    ${wait} = get implicit wait             # Storing implicit wait in variable
    log to console  ${wait}                 # Printing Newly set implicit wait

    # SCROLLING WITH PIXELS
    #execute javascript  window.scrollTo(0,2500)     # Scrolling with pixels (vertically)

    # SCROLL TILL ELEMENT FOUND
    #scroll element into view    xpath://span[@class='ui-slider-handle ui-corner-all ui-state-default']
    capture element screenshot  xpath://span[@class='ui-slider-handle ui-corner-all ui-state-default']  C:/Users/Shubham Dhakan/PycharmProjects/SeleniumRobotFramework/element.png

    # SCROLL TO BOTTOM & TOP
    execute javascript  window.scrollTo(0,document.body.scrollHeight)   # In arguments we have (0) as it is starting point
                                                                        # Another agrument to reach bottom
    sleep   2

    execite javascript  window.scrollTo(0,-document.body.scrollHeight)  # In arguments 0 is starting point
                                                                        # and another is arg is to reach top.

    # Capturing ScreenShot
    capture page screenshot     C:/Users/Shubham Dhakan/PycharmProjects/SeleniumRobotFramework/page.png