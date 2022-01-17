*** Settings ***
Resource    ../../resources/imports.robot

*** Keywords ***
Get GitHub Account "${account}" Info
    [Documentation]    Get Account API
    RequestsLibrary.Create Session    GetAccount    ${gh_api}   verify=true
    ${response}=    RequestsLibrary.GET On Session    GetAccount    ${get_users}/${account}
    Set Test Variable    ${response}    ${response}

Response Body "${key}" Should Be "${value}"
    [Documentation]    Check whether key=value in response body
    ${json}=    Set Variable   ${response.json()}
    Should Be Equal As Strings    ${json['${key}']}    ${value}