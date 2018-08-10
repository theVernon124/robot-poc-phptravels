*** Settings ***
Library		SeleniumLibrary
Library		DateTime
Resource	${EXECDIR}${/}resources${/}keywords${/}CustomCommands.robot
Resource	${EXECDIR}${/}resources${/}data${/}Globals.robot
Resource	${EXECDIR}${/}resources${/}data${/}TestData.robot
Resource	${EXECDIR}${/}pages${/}AccountPage.robot
Resource	${EXECDIR}${/}pages${/}HomePage.robot
Resource	${EXECDIR}${/}pages${/}LoginPage.robot
Resource	${EXECDIR}${/}pages${/}SearchResultsPage.robot
Resource	${EXECDIR}${/}pages${/}HotelDetailPage.robot
Resource	${EXECDIR}${/}pages${/}HotelBookingPage.robot
Resource	${EXECDIR}${/}pages${/}InvoicePage.robot
Resource	${EXECDIR}${/}pages${/}RegistrationPage.robot