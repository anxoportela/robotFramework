*** Settings ***
Resource    ../../resources/imports.robot

*** Keywords ***
Open Test Application
  Open Application  http://127.0.0.1:4723/wd/hub  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  app=${ANDROID_APP}  appPackage=io.appium.android.apis  appActivity=.app.SearchInvoke
  Capture Page Screenshot

Input Search Query
  [Arguments]  ${query}
  Input Text  ${input_text}  ${query}
  Capture Page Screenshot

Submit Search
  Click Element  ${btn_search}

Search Query Should Be Matching
  [Arguments]  ${text}
  Wait Until Page Contains Element  ${input_text_value}
  Element Text Should Be  ${input_text_value}  ${text}
  Capture Page Screenshot

Search Query Should Not Be Matching
  [Arguments]  ${text}
  Wait Until Page Contains Element  ${input_text_value}
  Element Should Not Contain Text    ${input_text_value}    ${text}
  Capture Page Screenshot

Close Session
    Close Application