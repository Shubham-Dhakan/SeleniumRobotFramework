*** Settings ***
Library		SeleniumLibrary


*** Variables ***
${browser}	chrome
${url}		http://demowebshop.tricentis.com/register


*** Test Cases ***
${speed} = get selenium speed
log to console		${speed}
open browser	${url}	${browser}
maximize browser window
Testing wait concept
close browser

*** keywords ***
Testing wait concept

	set selenium speed	2			<<<<< THIS COMMAND WILL CREATE 2 SECOND DELAY AFTER CALLING EVERY ELEMENT >>>>>
	input box	name:FirstName(attribute:value)		john
	input box 	name:LastName(attribute:value)		david
	input box	name:Email(attribute:value)		abc@gmail.com
	input box	name:Password(attribute:value)		johndavid
	input box	name:ConfirmPassword(attribute:value)	johndavid
	${speed} = get selenium speed
	log to console ${speed}
