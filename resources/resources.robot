*** Settings ***
Library    OperatingSystem
Library    Process
Library    DateTime


*** Variables ***
${results_dir}       results               # Directory to zip
${zip_file}          results           # Zip file name
*** Keywords ***
Zip Results
    [Documentation]    Zip the results folder
    Run Process    python    zip_results.py    ${results_dir}    ${zip_file}


