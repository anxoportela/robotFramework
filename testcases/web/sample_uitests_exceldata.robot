*** Settings ***
Documentation     Test My GitHub Web
Resource          ../../resources/imports.robot
Test Setup        Given I Open My GitHub URL "${gh_url}" With Browser "${browser}"
Test Teardown     Close Browser
Default Tags    web


*** Test Cases ***
TestCheckRepositoryOnGH
    [Documentation]    Open my GH and check whether my repository exists or not.
    When Click On Tab "${exceldata.Tab}"
    And Type Search Keyword "${exceldata.SearchOK}"
    Then "awesome" Should Be Found

TestSearchRepositoryNotFound
    [Documentation]    Search repository and expect result not found.
    When Click On Tab "${exceldata.Tab}"
    And Type Search Keyword "${exceldata.SearchFail}"
    Then Search Result Should Not Be Found

TestScrollBottom
    [Documentation]    Scroll to the bottom of the page.
    When Click On Tab "${exceldata.Tab}"
    Then Scroll To Bottom


