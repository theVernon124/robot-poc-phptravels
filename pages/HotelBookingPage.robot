*** Settings ***
Resource				${EXECDIR}${/}resources${/}Common.robot
	
	
*** Variables ***	
${FIRST_NAME_FIELD}		css:#guestform > div:nth-child(1) > div:nth-child(2) > input:nth-child(1)
${LAST_NAME_FIELD}		css:#guestform > div:nth-child(1) > div:nth-child(3) > input:nth-child(1)
${BOOKING_EMAIL_FIELD}	css:#guestform > div:nth-child(2) > div:nth-child(2) > input:nth-child(1)
${CONFIRM_EMAIL_FIELD}	css:#guestform > div:nth-child(2) > div:nth-child(3) > input:nth-child(1)
${MOBILE_FIELD}			css:div.form-group:nth-child(3) > div:nth-child(2) > input:nth-child(1)
${ADDRESS_FIELD}		css:div.form-group:nth-child(4) > div:nth-child(2) > input:nth-child(1)
${COUNTRY_DROPDOWN}		css:select.chosen-select
${CONFIRM_BOOKING_BTN}	css:button.btn:nth-child(2)