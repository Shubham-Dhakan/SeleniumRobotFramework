*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    loginintoapplication
    close browser

*** Keywords ***
loginintoapplication
    click link  //a[normalize-space()='Log in']
    input text  id:Email    pavanoltraining@gmail.com
    input text  id:Password Test@123
    click element   //button[normalize-space()='Log in']
