*** Settings ***
Library     SeleniumLibary
*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome
*** Test Cases ***

AddTest


   open browser    ${url}  ${browser}
    Set Selenium Speed    2 seconds
    Click Link    xpath=//*[@id="main"]/div/div/div/div/div[4]/div[2]/div[1]/div/div[1]/a/img
    Click Element    id=add-to-cart-button-1







*** Keywords ***
