Working with WebElements 
-------------------------->

*TextBox/Input Box 
- Visibility Status 
- Enabled Status 
- Provide Value
- Clearing Value 

- Verifying title of the Page. 


Create --> 4 PRE-REQUISITIES Sections  	
	Settings | Variables | Test Case | Keywords 

In settings --> insert 
< Library Seleniumlibrary > 
 
In variables --> Main aim of variables is to store chrome path in " chrome " keyword  ${browser}.   
Same as store the url of website we want to open in " URL " keyword.

In Testcase --> Following are the keywords used to perform actions. 
		Visibility Status -->  element should be visible (keyword)
		Enabled Status --> element should be enabled (keyword)
		Page title --> title should be (keyword)
			       click link (Keyword)

*** Test Cases ***
TestingInputbox
    open browser ${url} ${browser}
    maximize browser window
    title should be nopCommerce demo store
    click link  xpath://a[@class='ico-login']
    ${email_txt}    set variable    id:email

    element should be visible ${email_txt}
    element should be enabled ${email_txt}

    input text ${email_txt}     xyz@gmail.com
    sleep   5
    clear element text ${email_txt}  