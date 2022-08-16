*** Setting ***
Library     Selenium2Library

*** Variables ***
${Browser}  chrome
${URL}  https://www.uppass.io/
${Delay}    2
*** Keyword ***
#Verifies home page
    Title Should Be     Homepage - UpPass

#This test case verifies usecase menu bar
verifies tab menu usecase 
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Mouse Over      navbar-menu__usecase
    Click Element     navbar-menu__usecase
    Page Should Contain     Which business needs UpPass?

verifies tab menu pricing 
    Mouse Over      navbar-menu__pricing
    Click Element   navbar-menu__pricing
    Page Should Contain     Pricing  Free of Charge with Unlimited Users
    Set Selenium speed  ${Delay}

verifies tab menu support 
    Mouse Over      navbar-menu__support
    Click Element   navbar-menu__support
    Page Should Contain     How long do you need?
    
*** Test case ***
verifies tab menu 
    verifies tab menu usecase 
    verifies tab menu pricing 
    verifies tab menu support 
    
    