*** Settings ***
Library    Selenium2Library  
   
Documentation    Resource file for demo purposes
...    
...    this 
...    
... 
Default Tags    Test
       
   
*** Variables ***
${LOGIN URL}      https://www.capgemini.com/fr-fr/
${BROWSER}        Chrome

*** Test Cases ***
Open chrome
    [Documentation]    cas 1
    [Tags]    Open
    Open Browser    ${LOGIN URL}   ${BROWSER}   
    Maximize Browser Window
    Sleep    5
    Wait Until Element Is Visible    //a[contains(text(),"Autoriser tous les cookies")]    
    Click Element    //a[contains(text(),"Autoriser tous les cookies")]  
    Log    Chrome is opening    
    
    
Nos services menu
    [Documentation]    cas 2
    Set Tags    Second Tag
    Mouse Over    //a[contains(text(),"Nos services")]    
    Wait Until Element Is Visible    //a[contains(text(),"Nos services")]   
    Wait Until Element Is Visible    //a[contains(text(),"Applications, testing, infrastructures")]  
    Click Element    //a[contains(text(),"Applications, testing, infrastructures")]  
    Log    Menu is OK   
     
Applications, testing, infrastructures Page
    [Documentation]    cas 3
    Wait Until Element Is Visible    //a[contains(text(),"Quand les procédures de Testing sont plus faciles, les projets fonctionnent mieux")]  
    Click Element    //a[contains(text(),"Quand les procédures de Testing sont plus faciles, les projets fonctionnent mieux")]  
    Log    next use cases 
    
share file
    [Documentation]    cas 4
    Wait Until Element Is Visible    //a[contains(text(),"when_testing_gets_bette...")]
    Click Element    //a[contains(text(),"when_testing_gets_bette...")]       
    Log    PDF est ouvert 
     
Close Browser
    [Documentation]    cas 5
    Close Browser
    Log    Good by  

  

    
