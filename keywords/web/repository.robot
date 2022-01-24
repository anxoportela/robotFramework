*** Settings ***
Resource    ../../resources/imports.robot

*** Keywords ***
#bytext = xpath//*[text()='%%']
get by_text
    [Documentation]     Get by text "xpath=//*[text()='%%']"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //*[text()='${text}']
    [Return]    ${element}

#byctext = xpath//*[contains(text(),'%%')]
get by_contains_text
    [Documentation]     Get by contains text "xpath=//*[contains(text(),'%%')]"
    [Arguments]    ${text}
    ${element}=    Get WebElement     //*[contains(text(),'${text}')]
    [Return]    ${element}

#abyid = xpath//a[@id='%%']
get a_by_id
    [Documentation]     Get link by id "xpath=//a[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //a[@id='${id}']
    [Return]    ${element}

#abyclass = xpath//a[@class='%%']
get a_by_class
    [Documentation]     Get link by class "xpath=//a[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //a[@class='${class}']
    [Return]    ${element}

#abytext = xpath//a[text()='%%']
get a_by_text
    [Documentation]     Get link by text "xpath=//a[text()='%%']"
    [Arguments]     ${text}
    ${element}=     Get WebElement      //a[text()='${text}']
    [Return]    ${element}

#abytitle = xpath//a[@title='%%']
get a_by_title
    [Documentation]     Get link by title "xpath=//a[@title='%%']"
    [Arguments]    ${title}
    ${element}=    Get WebElement      //a[@title='${title}']
    [Return]    ${element}

#abyvalue = xpath//a[@value='%%']
get a_by_value
    [Documentation]     Get link by value "xpath=//a[@value='%%']"
    [Arguments]    ${value}
    ${element}=    Get WebElement      //a[@value='${value}']
    [Return]    ${element}

#abyhref = xpath//a[@href='%%']
get a_by_href
    [Documentation]     Get link by href "xpath=//a[@href='%%']"
    [Arguments]    ${href}
    ${element}=    Get WebElement     //a[@href='${href}']
    [Return]    ${element}

#acontainstext = xpath//a[contains(text(),"%%")]
get a_contains_text
    [Documentation]     Get link that contains text "xpath=//a[contains(text(),"%%")]"
    [Arguments]     ${text}
    ${element}=     Get WebElement        //a[contains(text(),"${text}")]
    [Return]    ${element}

#acontainsid = xpath//a[contains(@id,"%%")]
get a_contains_id
    [Documentation]     Get link that contains id "xpath=//a[contains(@id,"%%")]"
    [Arguments]     ${id}
    ${element}=     Get WebElement        //a[contains(@id,"${id}")]
    [Return]    ${element}

#acontainsclass = xpath//a[contains(@class,"%%")]
get a_contains_class
    [Documentation]     Get link that contains class "xpath=//a[contains(@class,"%%")]"
    [Arguments]     ${class}
    ${element}=     Get WebElement        //a[contains(@class,"${class}")]
    [Return]    ${element}

#acontainstitle = xpath//a[contains(@title,"%%")]
get a_contains_title
    [Documentation]     Get link that contains title "xpath=//a[contains(@title,"%%")]"
    [Arguments]     ${title}
    ${element}=     Get WebElement        //a[contains(@title,"${title}")]
    [Return]    ${element}

#acontainshref = xpath//a[contains(@href,"%%")]
get a_contains_href
    [Documentation]     Get link that contains href "xpath=//a[contains(@href,"%%")]"
    [Arguments]     ${href}
    ${element}=     Get WebElement        //a[contains(@href,"${href}")]
    [Return]    ${element}

#acontainsvalue = xpath//a[contains(@value,"%%")]
get a_contains_value
    [Documentation]     Get link that contains value "xxpath=//a[contains(@value,"%%")]"
    [Arguments]     ${value}
    ${element}=     Get WebElement        //a[contains(@value,"${value}")]
    [Return]    ${element}

#buttonbyclass = xpath//button[@class='%%']
get button_by_class
    [Documentation]     Get button by class "xpath=//button[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //button[@class='${class}']
    [Return]    ${element}

#buttonbyid = xpath//button[@id='%%']
get button_by_id
    [Documentation]     Get button by id "xpath//button[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //button[@id='${id}']
    [Return]    ${element}

#buttonbytext = xpath//button[text()='%%']
get button_by_text
    [Documentation]     Get button by text "xpath=//button[text()='%%']"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //button[text()='${text}']
    [Return]    ${element}

#buttonbytype = xpath//button[@type='%%']
get button_by_type
    [Documentation]     Get button by type "xpath=//button[@type='%%']"
    [Arguments]    ${type}
    ${element}=    Get WebElement      //button[@type='${type}']
    [Return]    ${element}

#buttoncontainsclass = xpath//button[contains(@class,"%%")]
get button_contains_class
    [Documentation]     Get button that contains class "xpath=//button[contains(@class,"%%")]"
    [Arguments]     ${class}
    ${element}=     Get WebElement        //button[contains(@class,"${class}")]
    [Return]    ${element}

#buttoncontainsid = xpath//button[contains(@id,"%%")]
get button_contains_id
    [Documentation]     Get button that contains id "xpath=//button[contains(@id,'%%')]"
    [Arguments]     ${id}
    ${element}=     Get WebElement        //button[contains(@id,"${id}")]
    [Return]    ${element}

#buttoncontainsidanddisabled = xpath//button[contains(@id,"%%") and @disabled]
get button_contains_id_and_disabled
    [Documentation]     Get button that contains id and is disabled "xpath=//button[contains(@id,"%%") and @disabled]"
    [Arguments]     ${id}
    ${element}=     Get WebElement        //button[contains(@id,"${id}") and @disabled]
    [Return]    ${element}

#buttoncontainsname = xpath//button[contains(@name,"%%")]
get button_contains_name
    [Documentation]     Get button that contains name "xpath=//button[contains(@name,"%%")]
    [Arguments]     ${name}
    ${element}=     Get WebElement        //button[contains(@name,"${name}")]
    [Return]    ${element}

#buttoncontainstext = xpath//button[contains(text(),"%%")]
get button_contains_text
    [Documentation]     Get button that contains text "xpath=//button[contains(text(),"%%")]
    [Arguments]     ${text}
    ${element}=     Get WebElement        //button[contains(text(),"${text}")]
    [Return]    ${element}

#buttoncontainsvalue = xpath//button[contains(@value,"%%")
get button_contains_value
    [Documentation]     Get button that contains value "xpath=//button[contains(@value,"%%")"
    [Arguments]     ${value}
    ${element}=     Get WebElement        //button[contains(@value,"${value}")]
    [Return]    ${element}

#divbyclass = xpath//div[@class="%%"]
get div_by_class
    [Documentation]     Get div by class "xpath=//div[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //div[@class='${class}']
    [Return]    ${element}

#divbyid = xpath//div[@id="%%"]
get div_by_id
    [Documentation]     Get div by id "xpath=//div[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //div[@id='${id}']
    [Return]    ${element}

#divbytext = xpath//div[text()='%%']
get div_by_text
    [Documentation]     Get div by text "xpath=//div[text()='%%']"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //div[text()='${text}']
    [Return]    ${element}

#divbytitle = xpath//div[@title='%%']
get div_by_title
    [Documentation]     Get div by title "xpath=//div[@title='%%']"
    [Arguments]    ${title}
    ${element}=    Get WebElement      //div[@title='${title}']
    [Return]    ${element}

#divcontainsclass = xpath//div[contains(@class,'%%')]
get div_contains_class
    [Documentation]     Get div that contains class "xpath=//div[contains(@class,'%%')]"
    [Arguments]     ${class}
    ${element}=     Get WebElement        //div[contains(@class,"${class}")]
    [Return]    ${element}

#divcontainsid = xpath//div[contains(@id,'%%')]
get div_contains_id
    [Documentation]     Get div that contains id "xpath=//div[contains(@id,'%%')]"
    [Arguments]     ${id}
    ${element}=     Get WebElement        //div[contains(@id,"${id}")]
    [Return]    ${element}

#divcontainstext = xpath//div[contains(text(),'%%')]
get div_contains_text
    [Documentation]     Get div that contains text "xpath=//div[contains(text(),'%%')]"
    [Arguments]     ${text}
    ${element}=     Get WebElement        //div[contains(text(),"${text}")]
    [Return]    ${element}

#divcontainstitle = xpath//div[contains(@title,'%%')]
get div_contains_title
    [Documentation]     Get div that contains title "xpath=//div[contains(@title,'%%')]"
    [Arguments]     ${title}
    ${element}=     Get WebElement        //div[contains(@title,"${title}")]
    [Return]    ${element}

#h1byid = xpath//h1[@id="%%"]
get h1_by_id
    [Documentation]     Get h1 by id "xpath=//h1[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //h1[@id='${id}']
    [Return]    ${element}

#h1byclass = xpath//h1[@class="%%"]
get h1_by_class
    [Documentation]     Get h1 by class "xpath=//h1[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //h1[@class='${class}']
    [Return]    ${element}

#h1bytext = xpath//h1[text()="%%"]
get h1_by_text
    [Documentation]     Get h1 by text "xpath=//h1[text()='%%']"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //h1[text()='${text}']
    [Return]    ${element}

#h1containsid = xpath//h1[contains(@id,'%%')]
get h1_contains_id
    [Documentation]     Get h1 that contains id "xpath=//h1[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //h1[contains(@id,'${id}')]
    [Return]    ${element}

#h1containstext = xpath//h1[contains(text(),'%%')]
get h1_contains_text
    [Documentation]     Get h1 that contains text "xpath=//h1[contains(text(),'%%')]"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //h1[contains(text(),'${text}')]
    [Return]    ${element}

#h1containsclass = xpath//h1[contains(@class,'%%'))]
get h1_contains_class
    [Documentation]     Get h1 that contains class "xpath=//h1[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //h1[contains(@class,'${class}')]
    [Return]    ${element}

#h2byid = xpath//h2[@id="%%"]
get h2_by_id
    [Documentation]     Get h2 by id "xpath=//h2[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //h2[@id='${id}']
    [Return]    ${element}

#h2byclass = xpath//h2[@class="%%"]
get h2_by_class
    [Documentation]     Get h2 by class "xpath=//h2[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //h2[@class='${class}']
    [Return]    ${element}

#h2bytext = xpath//h2[text()="%%"]
get h2_by_text
    [Documentation]     Get h2 by text "xpath=//h2[text()='%%']"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //h2[text()='${text}']
    [Return]    ${element}

#h2containsid = xpath//h2[contains(@id,'%%')]
get h2_contains_id
    [Documentation]     Get h2 that contains id "xpath=//h2[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //h2[contains(@id,'${id}')]
    [Return]    ${element}

#h2containstext = xpath//h2[contains(text(),'%%')]
get h2_contains_text
    [Documentation]     Get h2 that contains text "xpath=//h2[contains(text(),'%%')]"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //h2[contains(text(),'${text}')]
    [Return]    ${element}

#h2containsclass = xpath//h2[contains(@class,'%%'))]
get h2_contains_class
    [Documentation]     Get h2 that contains class "xpath=//h2[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //h2[contains(@class,'${class}')]
    [Return]    ${element}

#h3byid = xpath//h3[@id="%%"]
get h3_by_id
    [Documentation]     Get h3 by id "xpath=//h3[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //h3[@id='${id}']
    [Return]    ${element}

#h3byclass = xpath//h3[@class="%%"]
get h3_by_class
    [Documentation]     Get h3 by class "xpath=//h3[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //h3[@class='${class}']
    [Return]    ${element}

#h3bytext = xpath//h3[text()="%%"]
get h3_by_text
    [Documentation]     Get h3 by text "xpath=//h3[text()='%%']"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //h3[text()='${text}']
    [Return]    ${element}

#h3containsid = xpath//h3[contains(@id,'%%')]
get h3_contains_id
    [Documentation]     Get h3 that contains id "xpath=//h3[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //h3[contains(@id,'${id}')]
    [Return]    ${element}

#h3containstext = xpath//h3[contains(text(),'%%')]
get h3_contains_text
    [Documentation]     Get h3 that contains text "xpath=//h3[contains(text(),'%%')]"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //h3[contains(text(),'${text}')]
    [Return]    ${element}

#h3containsclass = xpath//h3[contains(@class,'%%'))]
get h3_contains_class
    [Documentation]     Get h3 that contains class "xpath=//h3[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //h3[contains(@class,'${class}')]
    [Return]    ${element}

#h4byid = xpath//h4[@id="%%"]
get h4_by_id
    [Documentation]     Get h4 by id "xpath=//h4[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //h4[@id='${id}']
    [Return]    ${element}

#h4byclass = xpath//h4[@class="%%"]
get h4_by_class
    [Documentation]     Get h4 by class "xpath=//h4[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //h4[@class='${class}']
    [Return]    ${element}

#h4bytext = xpath//h4[text()="%%"]
get h4_by_text
    [Documentation]     Get h4 by text "xpath=//h4[text()='%%']"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //h4[text()='${text}']
    [Return]    ${element}

#h4containsid = xpath//h4[contains(@id,'%%')]
get h4_contains_id
    [Documentation]     Get h4 that contains id "xpath=//h4[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //h4[contains(@id,'${id}')]
    [Return]    ${element}

#h4containstext = xpath//h4[contains(text(),'%%')]
get h4_contains_text
    [Documentation]     Get h4 that contains text "xpath=//h4[contains(text(),'%%')]"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //h4[contains(text(),'${text}')]
    [Return]    ${element}

#h4containsclass = xpath//h4[contains(@class,'%%'))]
get h4_contains_class
    [Documentation]     Get h4 that contains class "xpath=//h4[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //h4[contains(@class,'${class}')]
    [Return]    ${element}

#h5byid = xpath//h5[@id="%%"]
get h5_by_id
    [Documentation]     Get h5 by id "xpath=//h5[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //h5[@id='${id}']
    [Return]    ${element}

#h5byclass = xpath//h5[@class="%%"]
get h5_by_class
    [Documentation]     Get h5 by class "xpath=//h5[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //h5[@class='${class}']
    [Return]    ${element}

#h5bytext = xpath//h5[text()="%%"]
get h5_by_text
    [Documentation]     Get h5 by text "xpath=//h5[text()='%%']"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //h5[text()='${text}']
    [Return]    ${element}

#h5containsid = xpath//h5[contains(@id,'%%')]
get h5_contains_id
    [Documentation]     Get h5 that contains id "xpath=//h5[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //h5[contains(@id,'${id}')]
    [Return]    ${element}

#h5containstext = xpath//h5[contains(text(),'%%')]
get h5_contains_text
    [Documentation]     Get h5 that contains text "xpath=//h5[contains(text(),'%%')]"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //h5[contains(text(),'${text}')]
    [Return]    ${element}

#h5containsclass = xpath//h5[contains(@class,'%%'))]
get h5_contains_class
    [Documentation]     Get h5 that contains class "xpath=//h5[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //h5[contains(@class,'${class}')]
    [Return]    ${element}

#headerbyid = xpath//header[@id="%%"]
get header_by_id
    [Documentation]     Get header by id "xpath=//header[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //header[@id='${id}']
    [Return]    ${element}

#headerbyclass = xpath//header[@class="%%"]
get header_by_class
    [Documentation]     Get header by class "xpath=//header[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //header[@class='${class}']
    [Return]    ${element}

#headerbytext = xpath//header[text()="%%"]
get header_by_text
    [Documentation]     Get header by text "xpath=//header[text()='%%']"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //header[text()='${text}']
    [Return]    ${element}

#headercontainstext = xpath//header[contains(text(),'%%')]
get header_contains_text
    [Documentation]     Get header that contains text "xpath=//header[contains(text(),'%%')]"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //header[contains(text(),'${text}')]
    [Return]    ${element}

#headercontainsclass = xpath//header[contains(@class,'%%')]
get header_contains_class
    [Documentation]     Get header that contains class "xpath=//header[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //header[contains(@class,'${class}')]
    [Return]    ${element}

#headercontainsid = xpath//header[contains(@id,'%%')]
get header_contains_id
    [Documentation]     Get header that contains id "xpath=//header[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //header[contains(@id,'${id}')]
    [Return]    ${element}

#ibyid = xpath//i[@id="%%"]
get i_by_id
    [Documentation]     Get i by id "xpath=//i[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //i[@id='${id}']
    [Return]    ${element}

#ibyclass = xpath//i[@class="%%"]
get i_by_class
    [Documentation]     Get i by class "xpath=//i[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //i[@class='${class}']
    [Return]    ${element}

#ibytext = xpath//i[text()="%%"]
get i_by_text
    [Documentation]     Get i by text "xpath=//i[text()='%%']"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //i[text()='${text}']
    [Return]    ${element}

#icontainsid = xpath//i[contains(@id,'%%')]
get i_contains_id
    [Documentation]     Get i that contains id "xpath=//i[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //i[contains(@id,'${id}')]
    [Return]    ${element}

#icontainsclass = xpath//i[contains(@class,'%%')]
get i_contains_class
    [Documentation]     Get i that contains class "xpath=//i[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //i[contains(@class,'${class}')]
    [Return]    ${element}

#icontainstext = xpath//i[contains(text(),"%%")]
get i_contains_text
    [Documentation]     Get i that contains text "xpath=//i[contains(text(),"%%")]"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //i[contains(text(),'${text}')]
    [Return]    ${element}

#imgbyalt = xpath//img[@alt='%%']
get img_by_alt
    [Documentation]     Get img by alt "xpath=//img[@alt='%%']"
    [Arguments]    ${alt}
    ${element}=    Get WebElement      //img[@alt='${alt}']
    [Return]    ${element}

#imgbyid = xpath//img[@id="%%"]
get img_by_id
    [Documentation]     Get img by id "xpath=//img[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //img[@id='${id}']
    [Return]    ${element}

#imgbysrc = xpath//img[@src="%%"]
get img_by_src
    [Documentation]     Get img by src "xpath=//img[@src='%%']"
    [Arguments]    ${src}
    ${element}=    Get WebElement      //img[@src='${src}']
    [Return]    ${element}

#imgbytitle = xpath//img[@title="%%"]
get img_by_title
    [Documentation]     Get img by title "xpath=//img[@title='%%']"
    [Arguments]    ${title}
    ${element}=    Get WebElement      //img[@title='${title}']
    [Return]    ${element}

#imgbyclass = xpath//img[@class="%%"]
get img_by_class
    [Documentation]     Get img by class "xpath=//img[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //img[@class='${class}']
    [Return]    ${element}

#imgcontainssrc = xpath//img[contains(@src,'%%')]
get img_contains_src
    [Documentation]     Get img that contains src "xpath=//img[contains(@src,'%%')]"
    [Arguments]    ${src}
    ${element}=    Get WebElement      //img[contains(@src,'${src}')]
    [Return]    ${element}

#imgcontainsclass = xpath//img[contains(@class,'%%')]
get img_contains_class
    [Documentation]     Get img that contains class "xpath=//img[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //img[contains(@class,'${class}')]
    [Return]    ${element}

#imgcontainsalt = xpath//img[contains(@alt,'%%')]
get img_contains_alt
    [Documentation]     Get img that contains alt "xpath=//img[contains(@alt,'%%')]"
    [Arguments]    ${alt}
    ${element}=    Get WebElement      //img[contains(@alt,'${alt}')]
    [Return]    ${element}

#imgcontainsid = xpath//img[contains(@id,'%%')]
get img_contains_id
    [Documentation]     Get img that contains id "xpath=//img[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //img[contains(@id,'${id}')]
    [Return]    ${element}

#imgcontainstitle = xpath//img[contains(@title,'%%')]
get img_contains_title
    [Documentation]     Get img that contains title "xpath=//img[contains(title(),'%%')]"
    [Arguments]    ${title}
    ${element}=    Get WebElement      //img[contains(title(),'${title}')]
    [Return]    ${element}

#inputbyid = xpath//input[@id="%%"]
get input_by_id
    [Documentation]     Get input by id "xpath=//input[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //input[@id='${id}']
    [Return]    ${element}

#inputbyname = xpath//input[@name="%%"]
get input_by_name
    [Documentation]     Get input by name "xpath=//input[@name='%%']"
    [Arguments]    ${name}
    ${element}=    Get WebElement      //input[@name='${name}']
    [Return]    ${element}

#inputbyvalue = xpath//input[@value="%%"]
get input_by_value
    [Documentation]     Get input by value "xpath=//input[@value='%%']"
    [Arguments]    ${value}
    ${element}=    Get WebElement      //input[@value='${value}']
    [Return]    ${element}

#inputbytype = xpath//input[@type="%%"]
get input_by_type
    [Documentation]     Get input by type "xpath=//input[@type='%%']"
    [Arguments]    ${type}
    ${element}=    Get WebElement      //input[@type='${type}']
    [Return]    ${element}

#inputbyclass = xpath//input[@class="%%"]
get input_by_class
    [Documentation]     Get input by class "xpath=//input[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //input[@class='${class}']
    [Return]    ${element}

#inputcontainsid = xpath//input[contains(@id,'%%')]
get input_contains_id
    [Documentation]     Get input that contains id "xpath=//input[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //input[contains(@id,'${id}')]
    [Return]    ${element}

#inputcontainsidanddisabled = xpath//input[contains(@id,'%%') and @disabled]
get input_contains_id_and_disabled
    [Documentation]     Get input that contains id "xpath=//input[contains(@id,'%%') and @disabled]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //input[contains(@id,'${id}') and @disabled]
    [Return]    ${element}

#inputcontainsname = xpath//input[contains(@name,'%%')]
get input_contains_name
    [Documentation]     Get input that contains name "xpath=//input[contains(@name,'%%')]"
    [Arguments]    ${name}
    ${element}=    Get WebElement      //input[contains(@name,'${name}')]
    [Return]    ${element}

#inputcontainsvalue = xpath//input[contains(@value,'%%')]
get input_contains_value
    [Documentation]     Get input that contains value "xpath=//input[contains(@value,'%%')]"
    [Arguments]    ${value}
    ${element}=    Get WebElement      //input[contains(@value,'${value}')]
    [Return]    ${element}

#inputcontainsclass = xpath//input[contains(@class,'%%')]
get input_contains_class
    [Documentation]     Get input that contains class "xpath=//input[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //input[contains(@class,'${class}')]
    [Return]    ${element}

#labelbyid = xpath//label[@id="%%"]
get label_by_id
    [Documentation]     Get label by id "xpath=//label[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //label[@id='${id}']
    [Return]    ${element}

#labelbyclass = xpath//label[@class="%%"]
get label_by_class
    [Documentation]     Get label by class "xpath=//label[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //label[@class='${class}']
    [Return]    ${element}

#labelbytext = xpath//label[text()="%%"]
get label_by_text
    [Documentation]     Get label by text "xpath=//label[text()='%%']"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //label[text()='${text}']
    [Return]    ${element}

#labelbyfor = xpath//label[@for="%%"]
get label_by_for
    [Documentation]     Get label by for "xpath=//label[@for='%%']"
    [Arguments]    ${for}
    ${element}=    Get WebElement      //label[@for='${for}']
    [Return]    ${element}

#labelcontainstext = xpath//label[contains(text(),'%%')]
get label_contains_text
    [Documentation]     Get label that contains text "xpath=//label[contains(text(),"%%")]"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //label[contains(text(),'${text}')]
    [Return]    ${element}

#labelcontainsclass = xpath//label[contains(@class,'%%')]
get label_contains_class
    [Documentation]     Get label that contains class "xpath=//label[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //label[contains(@class,'${class}')]
    [Return]    ${element}

#labelcontainsid = xpath//label[contains(@id,'%%')]
get label_contains_id
    [Documentation]     Get label that contains id "xpath=//label[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //label[contains(@id,'${id}')]
    [Return]    ${element}

#libyclass = xpath//li[@class='%%']
get li_by_class
    [Documentation]     Get li by class "xpath=//li[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //li[@class='${class}']
    [Return]    ${element}

#libyid = xpath//li[@id="%%"]
get li_by_id
    [Documentation]     Get li by id "xpath=//li[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //li[@id='${id}']
    [Return]    ${element}

#libytext = xpath//li[text()="%%"]
get li_by_text
    [Documentation]     Get li by text "xpath=//li[text()='%%']"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //li[text()='${text}']
    [Return]    ${element}

#licontainstext = xpath//li[contains(text(),'%%')]
get li_contains_text
    [Documentation]     Get li that contains text "xpath=//li[contains(text(),"%%")]"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //li[contains(text(),'${text}')]
    [Return]    ${element}

#licontainsclass = xpath//li[contains(@class,'%%')]
get li_contains_class
    [Documentation]     Get li that contains class "xpath=//li[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //li[contains(@class,'${class}')]
    [Return]    ${element}

#licontainsid = xpath//li[contains(@id,'%%')]
get li_contains_id
    [Documentation]     Get li that contains id "xpath=//li[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //li[contains(@id,'${id}')]
    [Return]    ${element}

#olbyclass = xpath//ol[@class='%%']
get ol_by_class
    [Documentation]     Get ol by class "xpath=//ol[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //ol[@class='${class}']
    [Return]    ${element}

#olbyid = xpath//ol[@id="%%"]
get ol_by_id
    [Documentation]     Get ol by id "xpath=//ol[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //ol[@id='${id}']
    [Return]    ${element}

#olbcontainsclass = xpath//ol[contains(@class,'%%')]
get ol_contains_class
    [Documentation]     Get ol that contains class "xpath=//ol[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //ol[contains(@class,'${class}')]
    [Return]    ${element}

#olcontainsid = xpath//ol[contains(@id,'%%')]
get ol_contains_id
    [Documentation]     Get ol that contains id "xpath=//ol[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //ol[contains(@id,'${id}')]
    [Return]    ${element}

#pbyid = xpath//p[@id='%%']
get p_by_id
    [Documentation]     Get p by id "xpath=//p[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //p[@id='${id}']
    [Return]    ${element}

#pbyclass = xpath//p[@class='%%']
get p_by_class
    [Documentation]     Get p by class "xpath=//p[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //p[@class='${class}']
    [Return]    ${element}

#pcontainsclass = xpath//p[contains(@class,'%%')]
get p_contains_class
    [Documentation]     Get p that contains class "xpath=//p[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //p[contains(@class,'${class}')]
    [Return]    ${element}

#pbytext = xpath//p[text()="%%"]
get p_by_text
    [Documentation]     Get p by text "xpath=//p[text()='%%']"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //p[text()='${text}']
    [Return]    ${element}

#pcontainstext = xpath//p[contains(text(),'%%')]
get p_contains_text
    [Documentation]     Get p that contains text "xpath=//p[contains(text(),"%%")]"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //p[contains(text(),'${text}')]
    [Return]    ${element}

#pcontainsid = xpath//p[contains(@id,'%%')]
get p_contains_id
    [Documentation]     Get p that contains id "xpath=//p[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //p[contains(@id,'${id}')]
    [Return]    ${element}

#sectionbyclass = xpath//section[@class="%%"]
get section_by_class
    [Documentation]     Get section by class "xpath=//section[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //section[@class='${class}']
    [Return]    ${element}

#sectionbyid = xpath//section[@id = '%%']
get section_by_id
    [Documentation]     Get section by id "xpath=//section[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //section[@id='${id}']
    [Return]    ${element}

#sectionbytext = xpath//section[text()="%%"]
get section_by_text
    [Documentation]     Get section by text "xpath=//section[text()='%%']"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //section[text()='${text}']
    [Return]    ${element}

#sectioncontainstext = xpath//section[contains(text(),'%%')]
get section_contains_text
    [Documentation]     Get section that contains text "xpath=//section[contains(text(),"%%")]"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //section[contains(text(),'${text}')]
    [Return]    ${element}

#sectioncontainsclass = xpath//span[contains(@class,'%%')]
get section_contains_class
    [Documentation]     Get section that contains class "xpath=//section[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //section[contains(@class,'${class}')]
    [Return]    ${element}

#sectioncontainsid = xpath//span[contains(@id,'%%')]
get section_contains_id
    [Documentation]     Get section that contains id "xpath=//section[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //section[contains(@id,'${id}')]
    [Return]    ${element}

#selectbyname = xpath//select[@name = '%%']
get select_by_name
    [Documentation]     Get select by name "xpath=//select[@name='%%']"
    [Arguments]    ${name}
    ${element}=    Get WebElement      //select[@name='${name}']
    [Return]    ${element}

#selectbyclass = xpath//select[@class="%%"]
get select_by_class
    [Documentation]     Get select by class "xpath=//select[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //select[@class='${class}']
    [Return]    ${element}

#selectbyid = xpath//select[@id = '%%']
get select_by_id
    [Documentation]     Get select by id "xpath=//select[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //select[@id='${id}']
    [Return]    ${element}

#selectcontainsname = xpath//select[contains(@name,'%%')]
get select_contains_name
    [Documentation]     Get select that contains name "xpath=//select[contains(@name,'%%')]"
    [Arguments]    ${name}
    ${element}=    Get WebElement      //select[contains(@name,'${name}')]
    [Return]    ${element}

#selectcontainsclass = xpath//select[contains(@class,'%%')]
get select_contains_class
    [Documentation]     Get select that contains class "xpath=//select[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //select[contains(@class,'${class}')]
    [Return]    ${element}

#selectcontainsid = xpath//select[contains(@id,'%%')]
get select_contains_id
    [Documentation]     Get select that contains id "xpath=//select[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //select[contains(@id,'${id}')]
    [Return]    ${element}

#spanbyclass = xpath//span[@class="%%"]
get span_by_class
    [Documentation]     Get span by class "xpath=//span[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //span[@class='${class}']
    [Return]    ${element}

#spanbyid = xpath//span[@id="%%"]
get span_by_id
    [Documentation]     Get span by id "xpath=//span[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //span[@id='${id}']
    [Return]    ${element}

#spanbytext = xpath//span[text()="%%"]
get span_by_text
    [Documentation]     Get span by text "xpath=//span[text()='%%']"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //span[text()='${text}']
    [Return]    ${element}

#spanbytitle = xpath//span[@title='%%']
get span_by_title
    [Documentation]     Get span by title "xpath=//span[@title='%%']"
    [Arguments]    ${title}
    ${element}=    Get WebElement      //span[@title='${title}']
    [Return]    ${element}

#spancontainsclass = xpath//span[contains(@class,'%%')]
get span_contains_class
    [Documentation]     Get span that contains class "xpath=//span[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //span[contains(@class,'${class}')]
    [Return]    ${element}

#spancontainstext = xpath//span[contains(text(),'%%')]
get span_contains_text
    [Documentation]     Get span that contains text "xpath=//span[contains(text(),"%%")]"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //span[contains(text(),'${text}')]
    [Return]    ${element}

#spancontainstitle = xpath//span[contains(title(),'%%')]
get span_contains_title
    [Documentation]     Get span that contains title "xpath=//span[contains(title(),'%%')]"
    [Arguments]    ${title}
    ${element}=    Get WebElement      //span[contains(title(),'${title}')]
    [Return]    ${element}

#spancontainsid = xpath//span[contains(@id,'%%')]
get span_contains_id
    [Documentation]     Get span that contains id "xpath=//span[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //span[contains(@id,'${id}')]
    [Return]    ${element}

#strongbytext = xpath//strong[text()='%%']
get strong_by_text
    [Documentation]     Get strong by text "xpath=//strong[text()='%%']"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //strong[text()='${text}']
    [Return]    ${element}

#strongcontainstext = xpath//strong[contains(text(),'%%')]
get strong_contains_text
    [Documentation]     Get strong that contains text "xpath=//strong[contains(text(),"%%")]"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //strong[contains(text(),'${text}')]
    [Return]    ${element}

#strongbyid = xpath//strong[@id='%%']
get strong_by_id
    [Documentation]     Get strong by id "xpath=//strong[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //strong[@id='${id}']
    [Return]    ${element}

#strongcontainsid = xpath//strong[contains(@id,'%%')]
get strong_contains_id
    [Documentation]     Get strong that contains id "xpath=//strong[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //strong[contains(@id,'${id}')]
    [Return]    ${element}

#strongbyclass = xpath//strong[@class='%%']
get strong_by_class
    [Documentation]     Get strong by class "xpath=//strong[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //strong[@class='${class}']
    [Return]    ${element}

#strongcontainsclass = xpath//strong[contains(@class,'%%')]
get strong_contains_class
    [Documentation]     Get strong that contains class "xpath=//strong[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //strong[contains(@class,'${class}')]
    [Return]    ${element}

#tablebyclass = xpath//table[@class="%%"]
get table_by_class
    [Documentation]     Get table by class "xpath=//table[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //table[@class='${class}']
    [Return]    ${element}

#tablebyid = xpath//table[@id ="%%"]
get table_by_id
    [Documentation]     Get table by id "xpath=//table[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //table[@id='${id}']
    [Return]    ${element}

#tablecontainsclass = xpath//table[contains(@class,'%%')]
get table_contains_class
    [Documentation]     Get table that contains class "xpath=//table[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //table[contains(@class,'${class}')]
    [Return]    ${element}

#tablecontainsid = xpath//table[contains(@id,'%%')]
get table_contains_id
    [Documentation]     Get table that contains id "xpath=//table[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //table[contains(@id,'${id}')]
    [Return]    ${element}

#tdbyclass = xpath//td[@class="%%"]
get td_by_class
    [Documentation]     Get td by class "xpath=//td[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //td[@class='${class}']
    [Return]    ${element}

#tdbyid = xpath//td[@id="%%"]
get td_by_id
    [Documentation]     Get td by id "xpath=//td[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //td[@id='${id}']
    [Return]    ${element}

#tdbytext = xpath//td[text()="%%"]
get td_by_text
    [Documentation]     Get td by text "xpath=//td[text()='%%']"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //td[text()='${text}']
    [Return]    ${element}

#tdcontainstext = xpath//td[contains(text(),'%%')]
get td_contains_text
    [Documentation]     Get td that contains text "xpath=//td[contains(text(),"%%")]"
    [Arguments]    ${text}
    ${element}=    Get WebElement      //td[contains(text(),'${text}')]
    [Return]    ${element}

#tdcontainsclass = xpath//td[contains(@class,"%%")]
get td_contains_class
    [Documentation]     Get td that contains class "xpath=//td[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //td[contains(@class,'${class}')]
    [Return]    ${element}

#tdcontainsid = xpath//td[contains(@id,'%%')]
get td_contains_id
    [Documentation]     Get td that contains id "xpath=//td[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //td[contains(@id,'${id}')]
    [Return]    ${element}

#textareabyid = xpath//textarea[@id="%%"]
get textarea_by_id
    [Documentation]     Get textarea by id "xpath=//textarea[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //textarea[@id='${id}']
    [Return]    ${element}

#textareabyclass = xpath//textarea[@class="%%"]
get textarea_by_class
    [Documentation]     Get textarea by class "xpath=//textarea[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //textarea[@class='${class}']
    [Return]    ${element}

#textareacontainsclass = xpath//textarea[contains(@class,'%%')]
get textarea_contains_class
    [Documentation]     Get textarea that contains class "xpath=//textarea[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //textarea[contains(@class,'${class}')]
    [Return]    ${element}

#textareacontainsid = xpath//textarea[contains(@id,'%%')]
get textarea_contains_id
    [Documentation]     Get textarea that contains id "xpath=//textarea[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //textarea[contains(@id,'${id}')]
    [Return]    ${element}

#textareacontainsidanddisabled = xpath//textarea[contains(@id,'%%') and @disabled]
get textarea_contains_id_and_disabled
    [Documentation]     Get textarea that contains id and disabled "xpath=//textarea[contains(@id,'%%') and @disabled]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //textarea[contains(@id,'${id}') and @disabled]
    [Return]    ${element}

#trbyid = xpath//tr[@id="%%"]
get tr_by_id
    [Documentation]     Get tr by id "xpath=//tr[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //tr[@id='${id}']
    [Return]    ${element}

#trbyclass = xpath//tr[@class="%%"]
get tr_by_class
    [Documentation]     Get tr by class "xpath=//tr[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //tr[@class='${class}']
    [Return]    ${element}

#trcontainsclass = xpath//tr[contains(@class,'%%')]
get tr_contains_class
    [Documentation]     Get tr that contains class "xpath=//tr[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //tr[contains(@class,'${class}')]
    [Return]    ${element}

#trcontainsid = xpath//tr[contains(@id,'%%')]
get tr_contains_id
    [Documentation]     Get tr that contains id "xpath=//tr[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //tr[contains(@id,'${id}')]
    [Return]    ${element}

#ulbyclass = xpath//ul[@class='%%']
get ul_by_class
    [Documentation]     Get ul by class "xpath=//ul[@class='%%']"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //ul[@class='${class}']
    [Return]    ${element}

#ulbyid = xpath//ul[@id="%%"]
get ul_by_id
    [Documentation]     Get ul by id "xpath=//ul[@id='%%']"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //ul[@id='${id}']
    [Return]    ${element}

#ulbcontainsclass = xpath//ul[contains(@class,'%%')]
get ul_contains_class
    [Documentation]     Get ul that contains class "xpath=//ul[contains(@class,'%%')]"
    [Arguments]    ${class}
    ${element}=    Get WebElement      //ul[contains(@class,'${class}')]
    [Return]    ${element}

#ulcontainsid = xpath//ul[contains(@id,'%%')]
get ul_contains_id
    [Documentation]     Get ul that contains id "xpath=//ul[contains(@id,'%%')]"
    [Arguments]    ${id}
    ${element}=    Get WebElement      //ul[contains(@id,'${id}')]
    [Return]    ${element}
