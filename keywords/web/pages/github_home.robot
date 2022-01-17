*** Settings ***
Resource    ../../../resources/imports.robot

*** Keywords ***
Click On Tab "${tab_name}"
    Click Link    default=/anxoportela?tab=${tab_name.lower()}
    Wait Until Element Is Visible    id=your-repos-filter    timeout=${explicit_timeout}