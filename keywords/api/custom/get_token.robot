*** Settings ***
Resource    ../../../resources/imports.robot


*** Keywords ***
Get Token Bearer
    [Documentation]     Get token
    Create Session    GetToken     ${token_url}
    ${json}=    Get Binary File    ${body_json_dir}/${token_json}
    ${response}=    Post On Session     GetToken       ${token_endpoint}       data=${json}        headers=&{headers}
    ${tokenCorp}=   Get Value From Json    ${response.json()}    tokenCorp
    Set Suite Variable    ${tokenCorp}       ${tokenCorp}