*** Settings ***
Resource    ../../resources/imports.robot

*** Keywords ***
Open URL "${url}" With Browser "${browser}"
    [Documentation]    Open URL with specified browser
    Run Keyword If    '${browser.lower()}' == 'chrome'    Open Chrome    ${url}
    Run Keyword If    '${browser.lower()}' == 'firefox'     Open Firefox    ${url}
    Capture Page Screenshot

Open Chrome
    [Arguments]    ${url}
    [Documentation]    Open Chrome Browser
    ${chrome_options}=    Set Chrome Options
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Go To    ${url}
    Maximize Browser Window

Open Firefox
    [Arguments]    ${url}
    [Documentation]    Open Firefox Browser
    ${firefox_options}=    Set Firefox Options
    Create Webdriver    Firefox    firefox_options=${firefox_options}
    Go To    ${url}
    Maximize Browser Window

Set Chrome Options
    [Documentation]    Set Chrome Options
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    FOR    ${option}    IN    @{chrome_options}
        Call Method    ${options}    add_argument    ${option}
    END
    [Return]    ${options}

Set Firefox Options
    [Documentation]    Set Firefox Options
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions()    sys, selenium.webdriver
    FOR    ${option}    IN    @{firefox_options}
        Call Method    ${options}    add_argument    ${option}
    END
    [Return]    ${options}