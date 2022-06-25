Create --> PRE-REQUISITIES 	
	Settings | Variables | Test Case | Keywords 

In settings --> insert 
< Library Seleniumlibrary > 
 
In variables --> Main aim of variables is to store chrome path in " chrome " keyword ${browser}.  
Same as store the url of website we want to open in " URL ". 




*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radio buttons and Checkboxes
    open browser    ${url} ${browser}
    maximize browser window

    #selecting radio button
    select radio button     sex     Female
    select radio button     sex     Male
    select radio button     exp     5

    sleep       5
    
    #selecting checkboxes
    select check boxes      Blacktea
    select check boxes      Redtea
