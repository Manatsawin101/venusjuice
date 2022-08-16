*** Setting ***
Library     SeleniumLibrary

*** Variable ***
${Browser}  chrome
${LOGIN URL}    https://app.uppass.io/en/dashboard/login
${Delay}    2
${Email}     manatsawin@gmail.com
${Your_email}       //*[@id="app"]/div/div/div[2]/div/div/div[4]/div[1]/div/input
${Password_Field}   //*[@id="app"]/div/div/div[2]/div/div/div[4]/div[2]/div/input 
${Login_button}     //*[@id="app"]/div/div/div[2]/div/div/div[4]/div[4]/button
${Google_signin}    //*[@id="app"]/div/div/div[2]/div/div/div[2]/a/div
${Signup_Email}     //*[@id="signup"]/div[2]/button
*** Keyword  ***

1.login using Email and Password
    Open Browser    ${LOGIN URL}    ${Browser}
    Title Should Be    UpPass - Login
Input Name
    [Arguments]    ${Email} 
    Input Text    ${Your_email}    ${Email} 

Input Password
    [Arguments]     ${password}
    Input Text      ${Password_Field}   ${password}
    Set Selenium speed    ${Delay} 

Click Login button
    Click button    ${Login_button} 
    Set Selenium speed    ${Delay} 
    
    
2.verifies Sign in with google Button
    Open Browser    ${LOGIN URL}    chrome
    Maximize Browser Window
    Title Should Be    UpPass - Login
    Mouse Over      ${Google_signin} 
    Click Element   ${Google_signin} 
    Wait Until Page Contains     ลงชื่อเข้าใช้ด้วย Google
    Mouse Down      //*[@id="identifierId"]
    Input Text      //*[@id="identifierId"]     manatsawin.rsu@gmail.com 
    Mouse Over      //*[@id="identifierNext"]/div/button
    Click Element   //*[@id="identifierNext"]/div/button

3.Hyberlink forget password? 
    Open Browser    ${LOGIN URL}    chrome
    Maximize Browser Window
    Click Element   //*[@id="app"]/div/div/div[2]/div/div/div[4]/div[3]/a
    Element Should Be Visible   //*[@id="app"]/div/div/div[2]/div/div/div[4]/div[1]/p/span   Email invalid
    Mouse Down   ${Your_email}
    Input Email    test@gmail.com
    Click forget password? 
Input Email
    [Arguments]    ${Email} 
    Input Text    ${Your_email}    ${Email} 

Click forget password? 
    Click Element   //*[@id="app"]/div/div/div[2]/div/div/div[4]/div[3]/a
    Wait Until Page Contains      Reset your Password

4.Hyberlink Sign up now?   
    Open Browser    ${LOGIN URL}    chrome
    Maximize Browser Window
    Click Element   //*[@id="app"]/div/div/div[2]/div/div/div[4]/div[5]/a
    Wait Until Page Contains  Free Sign up
    Set Selenium speed  ${Delay} 
#email sign 
    Input Text          //*[@id="signup"]/div[1]/div/input      test@gmail.com
    Click button        ${Signup_Email}
    Element Should Be Visible   //*[@id="signup"]/p[2]/span
    Set Selenium speed  ${Delay} 
    Mouse Over          //*[@id="signup"]/p/div/label/span[1]
    Click Element       //*[@id="signup"]/p/div/label/span[1]
    Click button        ${Signup_Email}
    Wait Until Page Contains  Activate your Account
*** Test case ***
This test case simply verifies login Page function

    4.Hyberlink Sign up now?   
       
    
   