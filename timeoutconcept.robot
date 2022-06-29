*** Settings ***
Library		SeleniumLibrary

*** Variables ***
${browser}	chrome
${url}

*** Test Cases ***

open browser	${url}	${url}
maximize browser window
${time} = get selenium timeout
log to console	${time}
Testing timeout concept
close browser

*** Keywords ***

# Handling Timeouts --> default selenium timeout time -- << 5 seconds >>
Testing timeout concept
	set selenium timeout	10	seconds			#<<< over here we hardcoding the timeout value to 10 seconds >>>
	wait until page contains Registration 		#<<< Selenium Robot framework defaulty will wait for 5 seconds but because of hardcoded value
								                #it will wait 10 seconds >>>

	select radio button	Gender	M
	input box	name:FirstName	abc
	input box	name:LastName	xyz
	input box	name:Email	abc@gmail.com
	input box	name:Password	cde
	input box 	name:ConfirmPassword	cde