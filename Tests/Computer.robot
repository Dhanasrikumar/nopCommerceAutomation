*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}          https://demo.nopcommerce.com/
${browser}      chrome
${screenshot_dir}    results/screenshots    # Define the directory for screenshots

*** Test Cases ***
DesktopTest
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Link    xpath:/html/body/div[6]/div[2]/ul[1]/li[1]/a
    Click Link    xpath:/html/body/div[6]/div[2]/ul[1]/li[1]/ul/li[1]/a
    Select Window    title=nopCommerce demo store. Desktops
    Click Element    xpath://*[@id="main"]/div/div[3]/div/div[2]/div[2]/div[2]/div/div/div[1]/div/div[2]/div[3]/div[2]/button[1]
    Capture Page Screenshot    ${screenshot_dir}/desktop_product.png

    [Teardown]    Close Browser
