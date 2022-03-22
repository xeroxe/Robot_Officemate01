*** Settings ***
Library    SeleniumLibrary

***Test Cases ***
Search with "Post It"
    Open Browser    https://www.officemate.co.th/en    chrome
    Input Text  xpath://input[@data-testid='txt-SearchBar']    Post It
    Click Element   xpath://div[@id='btn-searchResultPage']
    # Wait Until Element Contains   xpath://iframe[@classname="sp-fancybox-iframe sp-fancybox-skin sp-fancybox-iframe-"]     20
    # Select Frame    xpath://iframe[@classname="sp-fancybox-iframe sp-fancybox-skin sp-fancybox-iframe-9915"]
    # Wait Until Element Is Visible     xpath://*/html/body/div[8]/iframe     20
    # Select Frame    xpath://*/html/body/div[8]/iframe
    # Click Element   xpath://*[@class="fa fa-times element-close-button"]
