*** Settings ***
Library    AppiumLibrary
Resource    ${CURDIR}/Keyword.robot
Test Setup    OpenAppStart
Test Teardown    Close Application

*** Test Cases ***
TC001-Launch Application
    Wait Until Page Contains    Minimal    
    sleep    5

TC002-Verify Add Task Button
    Click Element    ${Locater_BtnAddtask}
    Wait Until Page Contains    Title   
    sleep    5

TC003-Verify Add Task
    Click Element    ${Locater_BtnAddtask}
    Wait Until Page Contains    Title
    Input Text    ${Locater_Addtitle}    Towork
    Click Element    ${Locater_BtnSend}
    Wait Until Page Contains    Towork
    sleep    5

TC004-Verify Edit Task
    Click Element    ${Locater_BtnAddtask}
    Wait Until Page Contains    Title
    Input Text    ${Locater_Addtitle}    Towork
    Click Element    ${Locater_BtnSend}
    Wait Until Page Contains    Towork
    Click Element    ${Locater_FirstItem}
    Wait Until Page Contains    Title
    Clear Text    ${Locater_Addtitle}
    Input Text    ${Locater_Addtitle}    Towork At Night
    Click Element    ${Locater_BtnSend}
    Wait Until Page Contains    Towork At Night
    sleep    5

TC005-Delete Task
    Click Element    ${Locater_BtnAddtask}
    Wait Until Page Contains    Title
    Input Text    ${Locater_Addtitle}    Towork
    Click Element    ${Locater_BtnSend}
    Wait Until Page Contains    Towork
    Swipe    1300    390    250    390
    Wait Until Page Contains    Deleted Todo

TC006-Undo Delete Task
    Click Element    ${Locater_BtnAddtask}
    Wait Until Page Contains    Title
    Input Text    ${Locater_Addtitle}    Towork
    Click Element    ${Locater_BtnSend}
    Wait Until Page Contains    Towork
    Swipe    1300    390    250    390
    Wait Until Page Contains    Deleted Todo
    Click Element    ${Locater_BtnUndo}
    Wait Until Page Contains    Towork

TC007-Verify Night Mode
    Click Element    ${Locater_BtnMenu}
    Wait Until Element Is Visible    ${Locater_BtnSetting}
    Click Element    ${Locater_BtnSetting}
    Click Element    ${Locater_BtnNight}
    Click Element    ${Locater_BtnBack}
    Wait Until Page Contains    Minimal
    sleep    5  