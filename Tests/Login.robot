*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../resources/resources.robot

*** Variables ***
${url}              https://demo.nopcommerce.com/
${browser}          chrome
${screenshot_dir}    results/screenshots    # Define the directory for screenshots

*** Test Cases ***
Test Registration Process
    [Documentation]    Test the registration process on the demo website
    Open Browser    ${url}    ${browser}
    Click Link    xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    Input Text    id:Email    dhanasri22@gmail.com
    Input Text    id:Password    Srii@147
    Click Element    xpath://button[@class="button-1 login-button"]
    *** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../resources/resources.robot

*** Variables ***
${url}              https://demo.nopcommerce.com/
${browser}          chrome
${screenshot_dir}    results/screenshots    # Define the directory for screenshots
${expected}     error
*** Test Cases ***
Test Registration Process
    [Documentation]    Test the registration process on the demo website
    Open Browser    ${url}    ${browser}
    Click Link    xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    Input Text    id:Email    dhanasri22@gmail.com
    Input Text    id:Password    Srii@147
    Click Element    xpath://button[@class="button-1 login-button"]
    page should contain     ${expected}

    # Capture a screenshot of the login page
    Capture Page Screenshot    ${screenshot_dir}/login_page.png
    [Teardown]    Close Browser
    Suite Teardown    Zip Results    ${results_dir}    ${zip_file}



