*** Settings ***
Resource    ../../resources/imports.robot

*** Keywords ***
Open Test Application
  Zoomba.MobileLibrary.Open Application  http://127.0.0.1:4723/wd/hub  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  app=${ANDROID_APP}  appPackage=io.appium.android.apis  appActivity=.app.SearchInvoke
  Zoomba.MobileLibrary.Capture Page Screenshot

Input Search Query
  [Arguments]  ${query}
  Zoomba.MobileLibrary.Input Text  ${input_text}  ${query}
  Zoomba.MobileLibrary.Capture Page Screenshot

Submit Search
  Zoomba.MobileLibrary.Click Element  ${btn_search}

Search Query Should Be Matching
  [Arguments]  ${text}
  Zoomba.MobileLibrary.Wait Until Page Contains Element  ${input_text_value}
  Zoomba.MobileLibrary.Element Text Should Be  ${input_text_value}  ${text}
  Zoomba.MobileLibrary.Capture Page Screenshot

Search Query Should Not Be Matching
  [Arguments]  ${text}
  Zoomba.MobileLibrary.Wait Until Page Contains Element  ${input_text_value}
  Zoomba.MobileLibrary.Element Should Not Contain Text    ${input_text_value}    ${text}
  Zoomba.MobileLibrary.Capture Page Screenshot

Close Session
    Zoomba.MobileLibrary.Close Application