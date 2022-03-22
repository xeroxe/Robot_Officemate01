*** Settings ***
Library    SeleniumLibrary

***Test Cases ***
Verify Search with "Post It"
    Open Browser    https://www.officemate.co.th/en    chrome
    Input Text  xpath://input[@data-testid='txt-SearchBar']    Post It
    Click Element   xpath://div[@id='btn-searchResultPage']

    #TODO Able to close Popup

    Wait Until Location Is Not      https://www.officemate.co.th/en     20
    Capture Page Screenshot
    Go Back

Verify Search with SKU: MKP0344596
    Input Text  xpath://input[@data-testid='txt-SearchBar']    MKP0344596
    Click Element   xpath://div[@id='btn-searchResultPage']



    Wait Until Location Is Not      https://www.officemate.co.th/en     20
    Capture Page Screenshot

Verify Search popup result
    Input Text  xpath://input[@data-testid='txt-SearchBar']    Post It
    Capture Page Screenshot


