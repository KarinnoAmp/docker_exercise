*** Settings ***
Documentation    Test
Library    OperatingSystem
Library    AppiumLibrary


*** Variables ***
${CAPACIBILITY_URL}    http://localhost:4723/wd/hub
&{CAPACIBILITY}    platformName=iOS
...    platformVersion=14.8
...    deviceName=Nakarin
...    app=com.apple.mobilesafari
...    udid=a68d915439d221e7df8760928e9027f630c459ba
# ...    platformName=Android
# ...    platformVersion=11
# ...    deviceName=emulator-5554
# ...    appPackage=com.android.vending
# ...    appActivity=com.android.vending.AssetBrowserActivity


*** Test Cases ***
Test_1_001
    [Documentation]    Test
    ...    //c//Users//Karin//Documents//Git-Source//Docker-Test//automate://automate
    ...    //c//Users//Karin//Documents//Git-Source//Docker-Test//Result://Result
    # ${result}    Join Path    ../Actual/${TEST_NAME}/ExpensionIconFull.png
    # IF    "${result}" == "${None}"
    #     Log    ${result}
    # END
    Open Application    remote_url=${CAPACIBILITY_URL}        &{CAPACIBILITY}
    Sleep    5s
    Capture Page Screenshot
    Close All Applications
