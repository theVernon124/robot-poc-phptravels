*** Settings ***
Resource		${EXECDIR}${/}resources${/}Common.robot


*** Keywords ***
Search Result Button
	[Arguments]	${search_selection}
	[Return]	jquery:.table-striped > tbody > tr:contains("${search_selection}") > td > div > a > button