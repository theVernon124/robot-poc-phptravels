*** Settings ***
Resource							${EXECDIR}${/}resources${/}Common.robot


*** Keywords ***
Wait Enabled And Set Text
	[Arguments]						${element}				${text}
	Wait Until Element Is Enabled	${element}	
	Input Text						${element}				${text}

Wait Visible And Check Text
	[Arguments]						${element}				${text}
	Wait Until Element Is Visible	${element}
	Element Text Should Be			${element}				${text}	ignore_case=True

Wait Enabled And Click
	[Arguments]						${element}
	Wait Until Element Is Enabled	${element}
	Click Element					${element}