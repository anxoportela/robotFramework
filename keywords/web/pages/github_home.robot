*** Settings ***
Resource    ../../../resources/imports.robot


*** Keywords ***
Click On Tab "${tab_name}"
    [Documentation]     Click on tab '${tab_name}'
    Click Link    default=/anxoportela?tab=${tab_name.lower()}
    Wait Until Element Is Visible    ${search_box}    timeout=${explicit_timeouts.short}
    Capture Page Screenshot

Scroll To Bottom
    [Documentation]     Scroll to bottom of the page
    Scroll To Bottom Of Page
    ${position} =                Execute Javascript        return window.pageYOffset
    # Debug If    ${position} > 700
    Should Be True               ${position} > 700
    Capture Page Screenshot
