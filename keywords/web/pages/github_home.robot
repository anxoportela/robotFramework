*** Settings ***
Resource    ../../../resources/imports.robot


*** Keywords ***
Click On Tab "${tab_name}"
    SeleniumLibrary.Click Link    default=/anxoportela?tab=${tab_name.lower()}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_box}    timeout=${explicit_timeout}
    SeleniumLibrary.Capture Page Screenshot
