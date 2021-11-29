*** Settings ***
Library     Selenium2Library
Resource    recursos.robot

*** Test Cases ***
001 Ir al Blog de Winston Castillo
    Open HomePage
    Title Should Be     Hola Mundo!
    Set Focus To Element    xpath=/html/body/div[1]/div/div[2]/a[1]
    Click Link       xpath=/html/body/div[1]/div/div[2]/a[1]
    Wait Until Element is Visible       xpath=//*[@id="page-content"]/div
    Title Should Be     Winston Castillo – Un sitio para comunicarse
    Close Browser

002 Abrir Ventana Modal
    [Tags]      TestError
    Open HomePage
    Title Should Be     Hola Mundo!
    Click Element   xpath=//*[@id="Menu "]/li[1]/a
    Set Focus To Element    xpath=/html/body/div[1]/div/div[2]/a[2]
    Click Link      xpath=/html/body/div[1]/div/div[2]/a[2]
    Title Should Be     Hola Mundo!
    Wait Until Element is Visible       xpath=//*[@id="exampleModal"]/div/div/div[2]
    Close Browser