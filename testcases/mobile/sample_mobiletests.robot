*** Settings ***
Documentation  Simple example using AppiumLibrary
Resource          ../../resources/imports.robot

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP}                /home/anxo/Descargas/ApiDemos-debug.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=11}

*** Test Cases ***
Should send keys to search box and then check the value
  Open Test Application
  AppiumLibrary.Capture Page Screenshot
  Input Search Query  Hello World!
  Submit Search
  Search Query Should Be Matching  Hello World!
  AppiumLibrary.Capture Page Screenshot
  Close Session


*** Keywords ***
Open Test Application
  AppiumLibrary.Open Application  http://127.0.0.1:4723/wd/hub  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  app=${ANDROID_APP}  appPackage=io.appium.android.apis  appActivity=.app.SearchInvoke

Input Search Query
  [Arguments]  ${query}
  AppiumLibrary.Input Text  txt_query_prefill  ${query}

Submit Search
  AppiumLibrary.Click Element  btn_start_search

Search Query Should Be Matching
  [Arguments]  ${text}
  AppiumLibrary.Wait Until Page Contains Element  android:id/search_src_text
  AppiumLibrary.Element Text Should Be  android:id/search_src_text  ${text}

Close Session
    AppiumLibrary.Close Application
