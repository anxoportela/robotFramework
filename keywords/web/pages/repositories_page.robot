*** Settings ***
Resource    ../../../resources/imports.robot


*** Keywords ***
Type Search Keyword "${search_keyword}"
    [Documentation]     Perform typing on search box
    Zoomba.GUILibrary.Input Text    ${search_box}    ${search_keyword}
    Zoomba.GUILibrary.Capture Page Screenshot
    Zoomba.GUILibrary.Press Keys    ${search_box}    RETURN
    Zoomba.GUILibrary.Wait Until Element Is Visible    css=a.issues-reset-query    timeout=${explicit_timeout}

"${repository}" Should Be Found
    [Documentation]    Verify that specified repository is found.
    Zoomba.GUILibrary.Page Should Contain Link    default=/${account_name}/${repository}
    Zoomba.GUILibrary.Capture Page Screenshot

Search Result Should Not Be Found
    [Documentation]    Expect search result not found.
    Zoomba.GUILibrary.Page Should Contain    ${account_name} doesn’t have any repositories that match.
    Zoomba.GUILibrary.Capture Page Screenshot
