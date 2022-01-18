*** Settings ***
Documentation     Test My GitHub API
Resource    ../../resources/imports.robot
Default Tags    api

*** Test Cases ***
TestGetUserInfoSuccess
    [Documentation]    Get GH Account Info OK
    When Get GitHub Account "anxoportela" Info
    Then HTTP Response Status Code Should Be 200 OK
    And Response Body "url" Should Be "https://api.github.com/users/anxoportela"
    And Response Body "location" Should Be "Ourense, Spain"

TestGetUserInfoFail
    [Documentation]    Get GH Account Info KO
    When Get GitHub Account "anxoportela" Info
    Then HTTP Response Status Code Should Be 200 OK
    And Response Body "url" Should Be "https://api.github.com/users/anxoportela"
    And Response Body "location" Should Not Be "Orense, Spain"