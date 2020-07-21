*** Settings ***
Documentation     A test suite containing tests related to invalid login.
...
...               These tests are data-driven by their nature. They use a single
...               keyword, specified with Test Template setting, that is called
...               with different arguments to cover different scenarios.
...
...               This suite also demonstrates using setups and teardowns in
...               different levels.
Library           SeleniumLibrary
Resource          resource2.robot


# *** Variables ***

# ${json1}                 {description: "test", name: "pro", endDate: "25-07-2020", type: "", startDate: "01-08-2020"}
*** Test Cases ***
    
Start
   [Documentation]  GCC testing
  [Tags]  user flows
  #MFA Flow
   #Create project and topic flow
    Manage users page change user to subscriber
    #Manage users page change user to Publisher
     #Manage users page change user to Super admin
     #Manage users page change user to admin	
    #MFA_new user_create project_create topic
     [Teardown]  Close Browser
   
# PUT clients
    
    # RequestsLibrary.PUT    https://sense-dev.com/api/iam/users  { "isCoding": true }  
    
    # Number      response body money     200
     # # Integer     response status    200
    # # [Teardown]  Output  response body     ${json1}
   
    
  

