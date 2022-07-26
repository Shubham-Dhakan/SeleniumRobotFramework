*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/
*** Test Cases ***
${wait} = get selenium implicit wait        # It will store the default selenium implicit wait in variable
log to console  ${wait}                     # It will print the default selenium implicit wait

open browser    ${url}  ${browser}

${current_url}  = get location              # get location --> gives us "url"
                                            # It will store website url in variable
log to console  ${current_url}              # It will print the website url
Testing WebTable
close browser       # It will close the most recently opened browser

*** Keywords ***
Testing WebTable
    ${row} = get element count  xpath://table[@name='BookTable']/tbody/tr
    ${column} = get element count   xpath://table[@name='BookTable']/tbody/tr[1]/th
    log to console ${row}                       # Will count no. of rows
    log to console ${column}                    # WIll count no. of columns

    ${data} = get text  xpath://table[@name='BookTable']/tbody/tr[5]/td[2]    # Will Store HTML code text in variable
    log to console ${data}                              # Will print HTML code text

    # There 4 types of Method to EXTRACT value from Table:
    # Method 1: it will test given data in specific row 2
    table row should contain    xpath://table[@name='BookTable']    2 300
    # Method 2: it will verify and validate the give data in specific column
    table column should contain     xpath://table[@name='BookTable']    2   Animesh
    # Method 3: it will verify and validate the given data in entire table
    table cell should contain   xpath://table[@name='BookTable']    4   3   Javascript
    # Mehtod 4: it will verify and validate the given data in header section
    table head should contain   xpath://table[@name='BookTable']    Price
