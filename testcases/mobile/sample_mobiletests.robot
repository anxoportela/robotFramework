*** Settings ***
Documentation  Simple example using AppiumLibrary
Resource          ../../resources/imports.robot
Test Setup        Given Open Test Application
Test Teardown     Close Session
Default Tags    mobile

*** Test Cases ***
Should send keys to search box and then check the value is correct
  [Documentation]    Testing writing on input search box.
  When Input Search Query  Hello World!
  And Submit Search
  Then Search Query Should Be Matching  Hello World!

Should send keys to search box and then check the value is false
  [Documentation]    Testing writing on input search box.
  When Input Search Query  Goodbye World!
  And Submit Search
  Then Search Query Should Not Be Matching  Hello World!
