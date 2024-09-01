*** Settings ***

Library    AppiumLibrary

*** Variables ***
${START}    QAX

${MENU_HAMBURGUER}    //android.widget.ImageButton[@content-desc="Open navigation drawer"]



*** Keywords ***

Start session
    Open Application    http://localhost:4723
    ...        platformName=Android
    ...        deviceName=Android Emulator
    ...        automationName=UIAutomator2
    ...        app=${EXECDIR}/app/yodapp-beta.apk
    ...        udid=emulator-5554
    ...        autoGrantPermissions=true
    
Get started
    Wait Until Page Contains    ${START}    5
    
    Click Text    ${START}
    
Navigate to 
    [Arguments]                      ${item_text}
    Wait Until Element Is Visible    ${MENU_HAMBURGUER}
    Click Element                    ${MENU_HAMBURGUER}
    
    ${MENU_ITEM}    Set Variable    //*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item_text}"]

    Wait Until Element Is Visible    ${MENU_ITEM}    5
    Click Element                    ${MENU_ITEM}
    
Go to item
    [Arguments]                  ${item}    ${checkpoint}
    Wait Until Page Contains    ${item}    5
    Click Text                  ${item}

    Wait Until Page Contains    ${checkpoint}
    
Close session
    Close Application
