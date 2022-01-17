*** Settings ***
Documentation  Simple example using AppiumLibrary
Resource          ../../resources/imports.robot

*** Test Cases ***
Should send keys to search box and then check the value
  [Documentation]    Open demo apk and make some stuff.
  Open Test Application
  AppiumLibrary.Capture Page Screenshot
  Input Search Query  Hello World!
  Submit Search
  Search Query Should Be Matching  Hello World!
  AppiumLibrary.Capture Page Screenshot
  Close Session

