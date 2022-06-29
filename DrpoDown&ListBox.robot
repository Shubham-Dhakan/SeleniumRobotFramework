*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
open browser ${url} ${browser}
maximize browser window
Testing Dropdown&Listbox
close browser


*** Keywords ***
Testing Dropdown&Listbox

# Handling Drop Down
    #NOTE: (In drop down we can select weblement through 3 WAYS)
    #1 select from list by <<< label >>>        -- MOST PREFERED
    #2 select from list by <<< index >>>
    #3 select from list by <<< value >>>

    select from list by label   continents  Asia        # Asia = label
    sleep   5
    select from list by index   continents  5           # Index = 5

# Handling List Boxes
    select from list by label   selenium_commands   Switch Commands     # Switch Commands = label
    sleep   5
    select from list by label   selenium_commands   WebElement Commands     #Web Elements Commands = label

    unselect from list by label     selenium_commands Switch Commands