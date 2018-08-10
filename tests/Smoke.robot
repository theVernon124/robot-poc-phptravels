*** Settings ***
Documentation						Smoke tests for the PHPTravels site.
Test Setup							Open Browser				${HOMEPAGE_URL}		${BROWSER}
Test Teardown						Close Browser
Resource							${EXECDIR}${/}resources${/}Common.robot


*** Test Cases ***
Valid Login
	Wait Enabled And Click			${MY_ACCOUNT_MENU}	
	Wait Enabled And Click			${LOGIN_OPTION}	
	Wait Enabled And Set Text		${EMAIL_FIELD}				${VALID_EMAIL}
	Wait Until Element Is Enabled	${PASSWORD_FIELD}		
	Input Password					${PASSWORD_FIELD}			${VALID_PASSWORD}
	Wait Enabled And Click			${LOGIN_BTN}	
	Wait Visible And Check Text		${ACCOUNT_NAME_HEADER}		Hi, ${FIRST_NAME} ${LAST_NAME}

Valid Hotel Booking
	${HOTEL_SEARCH_SUGGESTION}=		Hotel Search Suggestion		${HOTEL_LOCATION}
	${CHECK_IN_DATE}=				Get Current Date			increment=7 days
	${CHECK_IN_DATE}=				Convert Date				${CHECK_IN_DATE}	result_format=%d/%m/%Y
	${CHECK_OUT_DATE}=				Get Current Date			increment=14 days
	${CHECK_OUT_DATE}=				Convert Date				${CHECK_OUT_DATE}	result_format=%d/%m/%Y
	${SEARCH_RESULT_BTN}=			Search Result Button		${HOTEL_NAME}
	${BOOK_ROOM_BTN}=				Book Room Button			${HOTEL_ROOM_NAME}
	Wait Enabled And Click			${HOTEL_SEARCH_CONTAINER}
	Wait Enabled And Set Text		${HOTEL_SEARCH_FIELD}		${HOTEL_LOCATION}
	Wait Until Element Is Enabled 	${HOTEL_SEARCH_SUGGESTION}
	Wait Enabled And Click			${HOTEL_SEARCH_SUGGESTION}
	Wait Enabled And Set Text		${CHECK_IN_FIELD}			${CHECK_IN_DATE}
	Wait Enabled And Set Text		${CHECK_OUT_FIELD}			${CHECK_OUT_DATE}
	Wait Enabled And Click			${SEARCH_BTN}	
	Wait Enabled And Click			${SEARCH_RESULT_BTN}
	Wait Enabled And Set Text		${REFINE_CHECKIN_FIELD}		${CHECK_IN_DATE}
	Wait Enabled And Set Text		${REFINE_CHECKOUT_FIELD}	${CHECK_OUT_DATE}
	Wait Enabled And Click			${MODIFY_DATE_BTN}
	Execute Javascript				window.scrollTo(0, 1000)
	Wait Enabled And Click			${BOOK_ROOM_BTN}	
	Wait Enabled And Set Text		${FIRST_NAME_FIELD}			${FIRST_NAME}
	Wait Enabled And Set Text		${LAST_NAME_FIELD}			${LAST_NAME}
	Wait Enabled And Set Text		${BOOKING_EMAIL_FIELD}		${VALID_EMAIL}
	Wait Enabled And Set Text		${CONFIRM_EMAIL_FIELD}		${VALID_EMAIL}
	Wait Enabled And Set Text		${MOBILE_FIELD}				${MOBILE_NO}
	Wait Enabled And Set Text		${ADDRESS_FIELD}			${ADDRESS}
	Select From List By Label		${COUNTRY_DROPDOWN}			${HOTEL_LOCATION}
	Wait Enabled And Click			${CONFIRM_BOOKING_BTN}	
	Wait Visible And Check Text		${INVOICE_HEADER}			${INVOICE_HEADER_LABEL}
	Wait Visible And Check Text		${INVOICE_CUSTOMER_NAME}	${FIRST_NAME} ${LAST_NAME}
	Wait Visible And Check Text		${INVOICE_CUSTOMER_ADDRESS}	${ADDRESS}
	Wait Visible And Check Text		${INVOICE_CUSTOMER_MOBILE}	${MOBILE_NO}
	Wait Visible And Check Text		${INVOICE_HOTEL_NAME}		${HOTEL_NAME}
	Wait Visible And Check Text		${INVOICE_ROOM_NAME}		Room : ${HOTEL_ROOM_NAME}
	Wait Visible And Check Text		${INVOICE_CHECKIN_DATE}		${CHECK_IN_DATE}
	Wait Visible And Check Text		${INVOICE_CHECKOUT_DATE}	${CHECK_OUT_DATE}