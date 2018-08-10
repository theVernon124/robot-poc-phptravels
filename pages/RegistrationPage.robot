*** Settings ***
Resource						${EXECDIR}${/}resources${/}Common.robot


*** Variables ***
${REGISTER_FNAME_FIELD}			css:div.form-group:nth-child(3) > input:nth-child(2)
${REGISTER_LNAME_FIELD}			css:div.form-group:nth-child(4) > input:nth-child(2)
${REGISTER_MOBILE_FIELD}		css:div.form-group:nth-child(5) > input:nth-child(2)
${REGISTER_EMAIL_FIELD}			css:div.form-group:nth-child(6) > input:nth-child(2)
${REGISTER_PASSWORD_FIELD}		css:div.form-group:nth-child(7) > input:nth-child(2)
${REGISTER_CONFIRM_PASS}		css:div.form-group:nth-child(8) > input:nth-child(2)
${SIGN_UP_BTN}					css:.signupbtn
${ERROR_MESSAGE}				css:.alert > p:nth-child(1)


*** Keywords ***
Perform User Registration
	[Arguments]					${fname}					${lname}	${mobile}	${email}	${password}	${confirm_password}	${message_selector}	${error}
	Wait Enabled And Set Text	${REGISTER_FNAME_FIELD}		${fname}
	Wait Enabled And Set Text	${REGISTER_LNAME_FIELD}		${lname}
	Wait Enabled And Set Text	${REGISTER_MOBILE_FIELD}	${mobile}
	Wait Enabled And Set Text	${REGISTER_EMAIL_FIELD}		${email}
	Wait Enabled And Set Text	${REGISTER_PASSWORD_FIELD}	${password}
	Wait Enabled And Set Text	${REGISTER_CONFIRM_PASS}	${confirm_password}
	Wait Enabled And Click		${SIGN_UP_BTN}
	Sleep						1s
	Wait Visible And Check Text	${message_selector}			${error}