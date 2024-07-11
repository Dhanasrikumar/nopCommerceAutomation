*** Settings ***
Library  Seleniumlibrary
*** Variables ***
${url}   https://demo.nopcommerce.com/
${browser}  chrome
*** Test Cases ***
ElectronTest

    Open Browser    ${url}    ${browser}
    Mouse over  xpath:/html/body/div[6]/div[2]/ul[1]/li[2]/a
    click link  path:/html/body/div[6]/div[2]/ul[1]/li[2]/ul/li[1]/a



