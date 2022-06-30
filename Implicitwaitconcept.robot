*** Settings ***
Library		SeleniumLibrary

*** Variables ***
${browser}	chrome
${url}      http://demowebshop.tricentis.com/register

*** Test Cases ***
open browser        ${url}  ${browser}
maximize browser window

# IMPLICIT WAIT CONCEPT
${implicittime} = get selenium implicit wait
log to console ${implicitwait}

set selenium implicit wait              10 seconds

${implicititme} = get selenium implicit wait
log to console ${implicittime}
Testing implicit wait                   # WHOLE SCRIPT IS WRITTEN IN KEYWORDS.
close browser

*** Keywords ***
Testing implicit wait
    input text       name:FirstName      david
    input text       name:LastName       john
    input text       name:Email         abc@gmail.com
    input text       name:Password       abc
    input text       name:ConfirmPassword abc
