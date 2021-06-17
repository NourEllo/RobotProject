*** Settings ***
Library    Selenium2Library    
   
Documentation    Resource file for demo purposes
...    
...    this 
...    
... 
Default Tags    Test
Suite Setup    Log    Welcome to the first Suite setup    
Suite Teardown    Log    Welcome to the first Suite Teardown    
Test Setup    Log    Welcome to the first Test setup
Test Teardown    Log    Welcome to the first Test Teardown        
   
*** Variables ***
${LOGIN URL}      https://www.capgemini.com/fr-fr/
${BROWSER}        Chrome

*** Test Cases ***
Open chrome
    [Documentation]    cas 1
    [Tags]    Firt Tag
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
    Wait Until Element Is Visible    //a[contains(text(),"Quand les procédures de Testing sont plus faciles, les projets fonctionnent mieux")]  
    Click Element    //a[contains(text(),"Quand les procédures de Testing sont plus faciles, les projets fonctionnent mieux")]  
    Sleep    4    
    #Wait Until Element Is Visible    href="https://www.capgemini.com/fr-fr/wp-content/uploads/sites/2/2017/08/when_testing_gets_better_business_runs_smoother_0.pdf"  
    #Click Element   href="https://www.capgemini.com/fr-fr/wp-content/uploads/sites/2/2017/08/when_testing_gets_better_business_runs_smoother_0.pdf"  

Close Browser
    Close Browser
    Log    Good by    

    
