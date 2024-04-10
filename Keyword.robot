*** Settings ***
Library    AppiumLibrary
Resource    ${CURDIR}/Variable.robot

*** Keywords ***
OpenAppStart
    Open Application    ${RemoteURL}
    ...                 platformName=${PlatformName}
    ...                 platformVersion=${PlatformVersion}
    ...                 deviceName=${Devicename}
    ...                 automationName=UiAutomator2
    ...                 newCommandTimeout=2500
    ...                 appPackage=${appPackage}
    ...                 appActivity=${appActivity}

