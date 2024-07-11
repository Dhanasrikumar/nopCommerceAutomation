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
    #Maximize Browser Window
    Click Link    xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[1]/a
    ${FName}=    Set Variable    id:FirstName
    ${LName}=    Set Variable    id:LastName
    ${Email_id}=    Set Variable    id:Email
    ${Password}=    Set Variable    id:Password
    ${ConfirmPsw}=    Set Variable    id:ConfirmPassword
    Input Text    ${FName}    Dhanasri
    Input Text    ${LName}    Kumar
    Input Text    ${Email_id}    dhanasri22@gmail.com
    Input Text    ${Password}    Srii@147
    Input Text    ${ConfirmPsw}    Srii@147
    Select Radio Button    Gender    F
    Click Element    id:register-button



    # Create a folder to store screenshots
    #Create Directory    ${screenshot_dir}
    # Capture and save a screenshot
    Capture Page Screenshot    ${screenshot_dir}/registration_page.png

    [Teardown]    Close Browser
    Suite Teardown   Zip Results    ${results_dir}    ${zip_file}


