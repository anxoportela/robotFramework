*** Settings ***
Resource    ../../resources/imports.robot

*** Keywords ***
Run Test On '${device}'
    Run Keyword If    '${device.lower()}' == 'android'    Open Android Test Application
    Run Keyword If    '${device.lower()}' == 'ios'    Open iOS Test Application
    Capture Page Screenshot

Open Android Test Application
  Open Application  http://127.0.0.1:4723/wd/hub  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  app=${CURDIR}/../../${ANDROID_APP_DIR}/${ANDROID_APP}  appPackage=${exceldata.appPackage}  appActivity=${exceldata.appActivity}

Open iOS Test Application
  open application  http://127.0.0.1:4723/wd/hub  automationName=${IOS_AUTOMATION_NAME}
  ...  app=${CURDIR}/../../${IOS_APP_DIR}/${IOS_APP}  platformName=${IOS_PLATFORM_NAME}  platformVersion=${IOS_PLATFORM_VERSION}
  ...  deviceName=${IOS_DEVICE_NAME}

Close Session
    Close Application