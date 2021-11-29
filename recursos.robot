*** Settings ***
Library     String

*** Variables ***
${browser}      chrome
${homePage}     http://www.winstoncastillo.com/udemy/

*** Keywords ***
Open HomePage
    Open browser    ${homePage}     ${browser}