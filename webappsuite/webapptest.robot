*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
Facebook Login
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android    deviceName=emulator    browserName=chrome        adbExecTimeout=30000    uiautomator2ServerInstallTimeout=150000       
    Set Appium Timeout    20
    Go To Url    https://m.facebook.com
    Input Text    //input[@id="m_login_email"]    sourab_john@yahoo.com
    Input Password    //*[@id="m_login_password"]    sssssss
    Sleep    2    
    Click Element    //button[@name="login"]
    Wait Until Page Contains    Invalid username or password       
    Page Should Contain Element    //*[text()='Invalid username or password']    
    


Magento
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android    deviceName=emulator    browserName=chrome    adbExecTimeout=30000    uiautomator2ServerInstallTimeout=150000    noReset=true      
    Set Appium Timeout    20
    Go To Url    https://www.magento.com
    Wait Until Element Is Visible    //*[@id="navbar"]//button
    Click Element    //*[@id="navbar"]//button
    Wait Until Element Is Visible    //*[text()='My Account']    
    Click Element    //*[text()='My Account']
    Wait Until Element Is Visible    //*[@id='email'] 
    Input Text    //*[@id='email']   balaji0017@gmail.com    
    Input Password    //*[@id='pass']    welcome@12345
    Wait Until Element Is Visible    //*[@id='send2'] 
    Hide Keyboard    
    Click Element    //*[@id='send2']
        
KhanAcademyNativeApp
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=Android    deviceName=POCO F1        appPackage=org.khanacademy.android    appActivity=org.khanacademy.android.ui.library.MainActivity     
    ...    adbExecTimeout=80000    uiautomator2ServerInstallTimeout=150000    androidInstallTimeout=250000
    #...    #app=${EXECDIR}${/}APP${/}Khan Academy_v6.2.1_apkpure.com.apk
    Set Appium Timeout    20
    Click Element    //*[@text='Profile']
    Wait Until Page Contains Element    //*[@text='Sign up with email']    
    Click Element    //*[@text='Sign up with email']
    Wait Until Page Contains Element    //*[@text='First name']    
    Input Text    //*[@text='First name']    Sourab
    Input Text    //*[@text='Last name']    Jacob
    Click Element    //*[@content-desc='Birthday']	
    Wait Until Page Contains Element    xpath=//*[@resource-id='android:id/numberpicker_input'] 
    Click Element    xpath=//*[@resource-id='android:id/numberpicker_input']
    Clear Text    xpath=(//*[@resource-id='android:id/numberpicker_input'])[1]
    Input Text    xpath=(//*[@resource-id='android:id/numberpicker_input'])[1]    Apr
    Click Element    xpath=(//*[@resource-id='android:id/numberpicker_input'])[2]
    Clear Text    xpath=(//*[@resource-id='android:id/numberpicker_input'])[2]
    Input Text    xpath=(//*[@resource-id='android:id/numberpicker_input'])[2]    25
    Click Element    xpath=(//*[@resource-id='android:id/numberpicker_input'])[3]
    Clear Text    xpath=(//*[@resource-id='android:id/numberpicker_input'])[3]
    Input Text    xpath=(//*[@resource-id='android:id/numberpicker_input'])[3]    1998
    sleep    2
    Click Element    //*[@text='OK']
    Input Text    //*[@text='Email address']    sourabjacob@gmail.com	
    Input Text    //*[@text='Password']    sourabA12	
    Scroll Down    locator

 
KhanAcademyNativeAppScroll
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=Android    deviceName=POCO F1        appPackage=org.khanacademy.android    appActivity=org.khanacademy.android.ui.library.MainActivity     
    ...    adbExecTimeout=80000    uiautomator2ServerInstallTimeout=150000    androidInstallTimeout=250000    udid=73c3c45c
    #...    #app=${EXECDIR}${/}APP${/}Khan Academy_v6.2.1_apkpure.com.apk
    Set Appium Timeout    20
    Wait Until Element Is Visible    //*[@text='Recent lessons']    
    FOR    ${i}    IN RANGE    0    999
        ${list}    Run Keyword And Ignore Error    Get Webelements    //*[@text='Partner content']
        Exit For Loop If    '${list}[0]'=='PASS'
        Swipe By Percent    50    75    50    25    3000
        
    END
    Click Element    //*[@text='Partner content']  
    

