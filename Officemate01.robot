*** Settings ***
Library    SeleniumLibrary

***Test Cases ***

Pre-requisite Go to URL
    Open Browser    https://www.officemate.co.th/en    chrome

TC01 Verify Search with "Post It"
    Input Text  xpath://input[@data-testid='txt-SearchBar']    Post It
    Click Element   xpath://div[@id='btn-searchResultPage']

    #TODO Able to close Popup

    Wait Until Element Is Visible      xpath://div[@data-testid='pnl-ListPage']
    Capture Page Screenshot
    Wait Until Location Is Not      https://www.officemate.co.th/en     20
    Go Back

TC02 Verify Search with SKU: MKP0344596
    Input Text  xpath://input[@data-testid='txt-SearchBar']    MKP0344596
    Click Element   xpath://div[@id='btn-searchResultPage']
    Wait Until Element Is Visible      xpath://div[@data-testid='pnl-ListPage']
    Capture Page Screenshot

TC03 Verify Search popup result
    Input Text  xpath://input[@data-testid='txt-SearchBar']    Post It
    Wait Until Element Is Visible      xpath://div[@data-testid='pnl-ListPage']
    Capture Page Screenshot

TC04 Verify Search with xxxxxxxxxx and not found
    Input Text  xpath://input[@data-testid='txt-SearchBar']    xxxxxxxxxx
    Click Element   xpath://div[@id='btn-searchResultPage']
    Wait Until Element Is Visible   //*[@id="pnl-listPageNotFound"]
    Capture Page Screenshot

TC09 Verify Search with % and not found (Failed)
    Input Text  xpath://input[@data-testid='txt-SearchBar']    %
    Click Element   xpath://div[@id='btn-searchResultPage']
    Wait Until Element Is Visible   //*[@id="pnl-listPageNotFound"]
    Capture Page Screenshot


