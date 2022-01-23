*** Settings ***
Documentation  Simple example using AppiumLibrary
Resource          ../../resources/imports.robot
Test Setup        Run Test On '${device}'
Test Teardown     Close Session
Default Tags    mobile

*** Test Cases ***
Should send keys to search box and then check the value is correct
  [Documentation]    Testing writing on input search box.
  When Input Search Query  ${exceldata.Text}
  And Submit Search
  Then Search Query Should Be Matching  ${exceldata.Text_AssertionOK}

Should send keys to search box and then check the value is false
  [Documentation]    Testing writing on input search box.
  When Input Search Query  ${exceldata.Text_AssertionFail}
  And Submit Search
  Then Search Query Should Not Be Matching  ${exceldata.Text_AssertionOK}
