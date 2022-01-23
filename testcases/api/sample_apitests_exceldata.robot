*** Settings ***
Documentation     Test My GitHub API
Resource    ../../resources/imports.robot
#Suite Setup      Get Token Bearer
Default Tags    api


*** Test Cases ***
Test Get GitHub User Info Custom Header
    [Documentation]    Get GH Account Info OK
    GET Request From "${exceldata.URL}" With Endpoint "${exceldata.Endpoint}" And Headers "${exceldata.Headers}"
    HTTP Response Status Code Should Be '200'
    HTTP Response Status Code Should Not Be '404'
    Response Body "url" Should Be "${exceldata.URL}${exceldata.Endpoint}"
    Response Body "location" Should Be "${exceldata.Location}"
