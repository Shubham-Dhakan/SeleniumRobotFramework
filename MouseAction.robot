*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome

*** Test Cases ***
Mouse Actions
close browser           # it will close single specific browser
#close all browser      # it will close all browser which are open

*** Keywords ***
Mouse Actions
    open browser    https://testautomationpractice.blogspot.com/    ${browser}
    maximize browser window

    # Performing Double Click Action
    double click element    xpath://button[@normalize-space()='Copy Text']  # It will perform double click operation on this element
    sleep 3

    # Performing Drag and Drop Action
    go to   http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html      # go to command will open new website in same browser.
    drag and drop   id=box3   id=box103          # It will perform drag and drop on this elements
    sleep 3

    # Performing Right Click Action
    open context menu   xpath://div[@id='box3']  # It will perform click action on this element
    sleep 3