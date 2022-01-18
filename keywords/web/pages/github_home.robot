*** Settings ***
Resource    ../../../resources/imports.robot


*** Keywords ***
Click On Tab "${tab_name}"
    Zoomba.GUILibrary.Click Link    default=/anxoportela?tab=${tab_name.lower()}
    Zoomba.GUILibrary.Wait Until Element Is Visible    ${search_box}    timeout=${explicit_timeout}
    Zoomba.GUILibrary.Capture Page Screenshot

Scroll To Bottom
    Zoomba.GUILibrary.scroll to bottom of page
    ${position} =                Execute Javascript        return window.pageYOffset
    # Debug If    ${position} > 700
    Should Be True               ${position} > 700
    Zoomba.GUILibrary.Capture Page Screenshot
