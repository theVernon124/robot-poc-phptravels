*** Settings ***
Resource					${EXECDIR}${/}resources${/}Common.robot


*** Variables ***
${MY_ACCOUNT_MENU}			css:ul.navbar-side:nth-child(1) > li:nth-child(1) > a:nth-child(1)
${LOGIN_OPTION}				css:.open > ul:nth-child(2) > li:nth-child(1) > a:nth-child(1)
${HOTEL_SEARCH_CONTAINER}	css:#s2id_autogen8 > a:nth-child(1)
${HOTEL_SEARCH_FIELD}		css:#select2-drop > div:nth-child(1) > input:nth-child(1)
${CHECK_IN_FIELD}			css:.dpd1
${CHECK_OUT_FIELD}			css:.dpd2
${SEARCH_BTN}				css:button.btn-lg:nth-child(3)
${SIGN_UP_OPTION}			css:.open > ul:nth-child(2) > li:nth-child(2) > a:nth-child(1)


*** Keywords ***
Hotel Search Suggestion
	[Arguments]	${selection}
	[Return]	jquery:.select2-results > li:contains("Locations") > ul:contains("${selection}")