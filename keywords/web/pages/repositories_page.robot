*** Settings ***
Resource    ../../../resources/imports.robot


*** Keywords ***
Type Search Keyword "${search_keyword}"
    [Documentation]     Perform typing on search box
    SeleniumLibrary.Input Text    ${search_box}    ${search_keyword}
    SeleniumLibrary.Capture Page Screenshot
    SeleniumLibrary.Press Keys    ${search_box}    RETURN
    SeleniumLibrary.Wait Until Element Is Visible    css=a.issues-reset-query    timeout=${explicit_timeout}

"${repository}" Should Be Found
    [Documentation]    Verify that specified repository is found.
    SeleniumLibrary.Page Should Contain Link    default=/${account_name}/${repository}
    SeleniumLibrary.Capture Page Screenshot

Search Result Should Not Be Found
    [Documentation]    Expect search result not found.
    SeleniumLibrary.Page Should Contain    ${account_name} doesn’t have any repositories that match.
    SeleniumLibrary.Capture Page Screenshot
