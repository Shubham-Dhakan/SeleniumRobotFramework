*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://opensource-demo.orangehrmlive.com/

*** Test Cases ***
Handling Screenshot
close browser

    #NOTE: Whenever we take screenshot is selenium robot framework we have to add path to save
    # the screenshot at desired location

    # Secondly if we dont add the path while saving the screenshot by default it will save the
    # screenshot in current working directory.


    # IF we take screenshot without any path then by default it will get stored "CWD"
    #capture element screenshot  xpath://*[@id='divLogo']/img
    #capture page screenshot

*** Keywords ***
Handling Screenshot
    open browser    ${url}  ${browser}
    input text  id:txtUsername  admin           # It will identify input box and eter "admin" as input
    input text  id:txtPassword  admin123        # It will identify input box and eter "admin123" as input

    # Handling how to take element screenshot:
    capture element screenshot  xpath://*[@id='divLogo']/img    C:/Users/Shubham Dhakan/PycharmProjects/SeleniumRobotFramework/ElementSS.png

    # Handling how to take page screenshot:
    capture page screenshot  C:/Users/Shubham Dhakan/PycharmProjects/SeleniumRobotFramework/pageSS.png
