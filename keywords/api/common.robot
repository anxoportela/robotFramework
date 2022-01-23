*** Settings ***
Resource    ../../resources/imports.robot


*** Keywords ***
Get Token Bearer
    [Documentation]     Get token
    Create Session    GetToken     ${token_url}
    ${json}=    Get Binary File    ${body_json_dir}/${token_json}
    ${response}=    Post On Session     GetToken       ${token_endpoint}       data=${json}        headers=&{headers}
    ${tokenCorp}=   Get Value From Json    ${response.json()}    tokenCorp
    Set Suite Variable    ${tokenCorp}       ${tokenCorp}

POST Request From "${url}" With Endpoint "${endpoint}" And JSON File "${data_json}" And Headers "${custom_headers}"
    [Documentation]     POST Response from API
    Create Session    PostResponse     ${url}
    IF    "${custom_headers}" != "${EMPTY}"
        ${headers_file}=    Get File    ${headers_json_dir}/${custom_headers}
        &{headers}=     Evaluate    json.loads('''${headers_file}''')     json
    END
    IF    "${data_json}" != "${EMPTY}"
        ${json}=    Get Binary File    ${body_json_dir}/${data_json}
        ${response}=    Post On Session     PostResponse       ${endpoint}       data=${json}       headers=&{headers}
    ELSE
        ${response}=    Post On Session     PostResponse       ${endpoint}       headers=&{headers}
    END
    Set Test Variable    ${response}    ${response.json()}

GET Request From "${url}" With Endpoint "${endpoint}" And Headers "${custom_headers}"
    [Documentation]    GET Response from API
    Create Session    GetResponse    ${url}
    IF    "${custom_headers}" != "${EMPTY}"
        ${headers_file}=    Get File    ${headers_json_dir}/${custom_headers}
        &{headers}=     Evaluate    json.loads('''${headers_file}''')     json
    END
    ${response}=    Get On Session    GetResponse    ${endpoint}    headers=&{headers}
    Set Test Variable    ${response}    ${response}

PATCH Request From "${url}" With Endpoint "${endpoint}" and JSON File "${json}" And Headers "${custom_headers}"
    [Documentation]     PATCH Response from API
    Create Session      PatchResponse       ${url}
    IF    "${custom_headers}" != "${EMPTY}"
        ${headers_file}=    Get File    ${headers_json_dir}/${custom_headers}
        &{headers}=     Evaluate    json.loads('''${headers_file}''')     json
    END
    IF    "${data_json}" != "${EMPTY}"
        ${json}=    Get Binary File    ${body_json_dir}/${data_json}
        ${response}=    Post On Session     PatchResponse       ${endpoint}       data=${json}       headers=&{headers}
    ELSE
        ${response}=    Post On Session     PatchResponse       ${endpoint}       headers=&{headers}
    END
    Set Test Variable    ${response}    ${response}

Response Body "${key}" Should Be "${value}"
    [Documentation]    Check whether key=value in response body
    ${json}=    Set Variable   ${response.json()}
    Should Be Equal As Strings    ${json['${key}']}    ${value}

Response Body "${key}" Should Not Be "${value}"
    [Documentation]    Check whether key!=value in response body
    ${json}=    Set Variable   ${response.json()}
    Should Not Be Equal As Strings    ${json['${key}']}    ${value}

HTTP Response Status Code Should Be '${status_code}'
    [Documentation]    Check if response status code is equal to the one provided
    Should Be Equal As Strings    ${response.status_code}    ${status_code}

HTTP Response Status Code Should Not Be '${status_code}'
    [Documentation]    Check if response status code is not equal to one provided
    Should Not Be Equal As Strings    ${response.status_code}    ${status_code}
