*** Settings ***
Resource					${EXECDIR}${/}resources${/}Common.robot


*** Variables ***
${REFINE_CHECKIN_FIELD}		css:.dpd1rooms
${REFINE_CHECKOUT_FiELD}	css:.dpd2rooms
${MODIFY_DATE_BTN}			css:input.btn


*** Keywords ***
Book Room Button
	[Arguments]				${room_name}
	[Return]				jquery:.table-striped > tbody > tr:contains("${room_name}") > td > div > div > div > div > div > button