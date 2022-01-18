*** Settings ***
Resource    ../../resources/imports.robot

*** Keywords ***
Open Test Application
  AppiumLibrary.Open Application  http://127.0.0.1:4723/wd/hub  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  app=${ANDROID_APP}  appPackage=io.appium.android.apis  appActivity=.app.SearchInvoke
  AppiumLibrary.Capture Page Screenshot

Input Search Query
  [Arguments]  ${query}
  AppiumLibrary.Input Text  ${input_text}  ${query}
  AppiumLibrary.Capture Page Screenshot

Submit Search
  AppiumLibrary.Click Element  ${btn_search}

Search Query Should Be Matching
  [Arguments]  ${text}
  AppiumLibrary.Wait Until Page Contains Element  ${input_text_value}
  AppiumLibrary.Element Text Should Be  ${input_text_value}  ${text}
  AppiumLibrary.Capture Page Screenshot

Search Query Should Not Be Matching
  [Arguments]  ${text}
  AppiumLibrary.Wait Until Page Contains Element  ${input_text_value}
  AppiumLibrary.Element Should Not Contain Text    ${input_text_value}    ${text}
  AppiumLibrary.Capture Page Screenshot

Close Session
    AppiumLibrary.Close Application