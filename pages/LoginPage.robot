*** Settings ***
Resource			${EXECDIR}${/}resources${/}Common.robot


*** Variables ***
${EMAIL_FIELD}		css:div.form-group:nth-child(1) > input:nth-child(2)
${PASSWORD_FIELD}	css:.panel-body > div:nth-child(2) > input:nth-child(2)
${LOGIN_BTN}		css:button.btn:nth-child(2)