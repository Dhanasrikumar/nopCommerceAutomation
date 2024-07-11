*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
DesktopTest
    open browser    https://demo.nopcommerce.com/   chrome
    click link  xpath:/html/body/div[6]/div[2]/ul[1]/li[1]/a
    click link  xpath:/html/body/div[6]/div[2]/ul[1]/li[1]/ul/li[1]/a
