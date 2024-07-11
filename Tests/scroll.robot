*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
TableTest
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    ${data}=    get text     xpath://table[@name="BookTable"]/tbody/tr[3]/td[3]
    log to console  ${data}
    ${rows}=    get element count   xpath://table[@name="BookName"]/tbody/tr
    ${colomns}=  get element count  xpath://table[@name="BookName"]/tbody/tr/th
    log to console  ${rows}
    log to console  ${colomns}
    table column should contain     xpath://table[@name="BookName"]   2   Author
    table cell should contain     xpath://table[@name="BookName"]   3  3   Java
    table row should contain     xpath://table[@name="BookName"]    Learn JS   3   Java