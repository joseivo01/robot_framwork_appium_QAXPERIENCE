*** Settings ***
Resource    ../resources/base.resource

*** Test Cases ***
Deve marcar as techs que usam Appium
    Start session
    Get started
    Navigate to    Check e Radio
    Go to item    Checkbox    Marque as techs que usam Appium

    @{techs}    Create List    Ruby    Python    Java    Javascript    C#    Robot Framework

    FOR    ${tech}    IN    @{techs}
        Click Element    xpath=//android.widget.CheckBox[contains(@text,"${tech}")]
        Sleep    1
    END
    

    # Mark options    Ruby
    # Mark options    Python
    # Mark options    Java
    # Mark options    Javascript

    # Wait Until Page Contains    Isso é um clique simples 
    Sleep    3
    Close session

*** Keywords ***
Mark options
    [Arguments]                      ${CHECK_BOX_OPTIONS}

    Click Element                    xpath=//android.widget.CheckBox[contains(@text,"${CHECK_BOX_OPTIONS}")]