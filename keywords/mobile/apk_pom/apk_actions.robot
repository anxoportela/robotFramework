*** Settings ***
Resource    ../../../resources/imports.robot

*** Keywords ***
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