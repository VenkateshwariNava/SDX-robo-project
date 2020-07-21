*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary
Library           pyotp
Library           mfa.py


*** Variables ***
${BROWSER}        chrome
${DELAY}          1
# ${Password}      ZXojSRKAm91@
# ${Email}       	rnvenkateshwari+97ig@gmail.com
${Password}         onejtYMgq42^ 
${Email}       	rnvenkateshwari+96ig@gmail.com
${changePassword}   Tiger!123456
${secret code}       NDEWW233LY4EWIG5MU2R2UTB5FC7OUFSIPPE6ADTZYHMZ5KSFHVQ
#${json1}                 {description: "test", name: "pro", endDate: "25-07-2020", type: "", startDate: "01-08-2020"}
# {json1}                 {description:"test",name: "pro"}
${n}         2,4
   
*** Keywords ***

MFA Flow

    Open Browser  https://sense-dev.com/sdx/home     ${BROWSER} 
   Set Selenium Speed    ${DELAY}
    Delete All Cookies
    Maximize Browser Window 
   Click Element    //*[@id="nav-login"]
	Input Text    //input[@name="email"]    ${Email}
	Input Text    //input[@name="password"]   ${Password} 
	Click Element  //BUTTON[@mat-flat-button='']
     ${new uesr} =   SeleniumLibrary.Get Value    //input[@id="secretCode"]
      ${a} =  Otp Test    ${new uesr}
     Input Text     //input[@name="authCode"]   ${a}
     Click Element   //BUTTON[@mat-flat-button='']

Create project and topic flow
  
 
    Open Browser  https://sense-dev.com/sdx/home     ${BROWSER} 
   Set Selenium Speed    ${DELAY}
    Delete All Cookies
    Maximize Browser Window 
   Click Element    //*[@id="nav-login"]
    Input Text    //input[@name="email"]    ${Email}
    Set Selenium Speed  ${DELAY}
	Input Text    //input[@name="password"]   ${Password} 
	Set Selenium Speed   ${DELAY}
	Click Element  //BUTTON[@mat-flat-button='']
	Set Selenium Speed   ${DELAY}
    ${b} =  Otp Test    ${secret code} 
   Input Text   //*[@id="authCodeInput"]  ${b}
   # ${b}
   Click Element   //BUTTON[@mat-flat-button='']
  
    #Click Element    //span[@class="mat-button-wrapper"]
	Set Selenium Speed     ${DELAY}
	Click Element    //div[@class="dashboard"]
	Set Selenium Speed   ${DELAY}
	Click Element    //div[@class="side-nav__icon-wrapper"]
	Click Element    xpath=(//span[@class="side-nav__label"])[2]
	Click Element    //span[@class="mat-button-wrapper"]
	
	Click Element    //button[@id="new-project-btn"]
	${secs} =    Get Time    epoch
	Input Text    xpath=//input[@id="project-name-input"]     Project venka auto14 ${secs} 
	
	Click Element    //*[@id="project-type-input"]
	Click Element     //SPAN[@class='mat-option-text'][text()=' Publish ']

	#//span[@class="mat-option-text"]
	
	# Click Element    //div[@class="mat-select-value"]
    
    
	Input Text   //input[@formcontrolname="fromDate"]    23-06-2020
	Press Key  //input[@formcontrolname="fromDate"]  \\13
	Input Text    //input[@formcontrolname="toDate"]    27-07-2020
	Press Key  //input[@formcontrolname="toDate"]   \\13
	 
	
		Input Text    //textarea[@id="project-desc-input"]     test
	Click Element    //*[@id="project-create-btn"]
	capture page screenshot
	 
	
	
	Set Selenium Speed    1
	
	
	# Create a topic
	Click Element    //span[@class="mat-button-wrapper"]
	Set Selenium Speed    ${DELAY}
	Click Element    //button[@id="new-topic-btn"]
	Set Selenium Speed    ${DELAY}
	Click Element    //div[@class="mat-radio-label-content"]
	Set Selenium Speed    ${DELAY}
	Click Element    //span[@class="mat-button-wrapper"]
	Set Selenium Speed    ${DELAY}
	
	Click Element    xpath=(//div[@class="mat-radio-label-content"])[5]
	Set Selenium Speed    ${DELAY}
	
	Click Element    xpath=(//mat-icon[@class="mat-icon notranslate material-icons mat-icon-no-color"])[3]
	Set Selenium Speed    ${DELAY}
	
	Click Element    xpath=(//div[@class="mat-form-field-infix"])[2]
	Set Selenium Speed    ${DELAY}
	
	Click Element      xpath=(//span[@class="mat-option-text"])[2]
	Set Selenium Speed    ${DELAY}
	
	Click Element    xpath=(//div[@class="mat-form-field-infix"])[3]
	Set Selenium Speed    ${DELAY}
	${secs1} =    Get Time    epoch
	Input Text    //input[@name="name"]    test-robo-june-25-5 ${secs1}
	Set Selenium Speed    ${DELAY}
	
		Click Element    xpath=(//span[@class="mat-button-wrapper"])[5]
		Set Selenium Speed    ${DELAY}
	
      
       Input Text    //textarea[@formcontrolname="description"]   sensors
       Set Selenium Speed    ${DELAY}
	
       
      
	Input Text    //*[@id="tag-input"]   test
	
   Press Key    //*[@id="tag-input"]  \\13
	
	
	Set Selenium Speed    ${DELAY}

#	Is approval needed for subscription requests?
	Click Element  //*[@id="mat-radio-10"]

	Set Selenium Speed    ${DELAY}
	Click Element     //*[@id="mat-radio-10"]/label/div[1]/div[2]
#Is approval needed for subscription requests?


	Set Selenium Speed    ${DELAY}
	Click Element   //*[@id="mat-radio-13"]
	Set Selenium Speed    ${DELAY}
   Click Element    //*[@id="mat-radio-13"]/label/div[1]/div[2]
	    
	  Set Selenium Speed    ${DELAY}
	# Click Element   //DIV[@class='mat-select-arrow-wrapper']/self::DIV
	
	# Set Selenium Speed    ${DELAY}
	# Click Element   (//MAT-PSEUDO-CHECKBOX[@class='mat-option-pseudo-checkbox mat-pseudo-checkbox ng-star-inserted mat-pseudo-checkbox-checked'])[1]
	 # Set Selenium Speed    ${DELAY}
     Click Element    xpath=(//span[@class="mat-button-wrapper"])[7]
	
		   Set Selenium Speed    ${DELAY}
	    
	    Click Element    //span[@class="dashboard-header__profile-icon"]
	Set Selenium Speed    ${DELAY}
	
      Click Element    //button[@class="mat-menu-item cdk-focused cdk-mouse-focused"]
 
 Manage users page change user to subscriber
 
 
 
    Open Browser  https://sense-dev.com/sdx/home     ${BROWSER} 
   Set Selenium Speed    ${DELAY}
    Delete All Cookies
    Maximize Browser Window 
   Click Element    //*[@id="nav-login"]
	# Input Text    //input[@name="email"]    ${Email}
	# Set Selenium Speed    ${DELAY}
	# Input Text    //input[@name="password"]   ${Password} 
	# Set Selenium Speed    ${DELAY}
	# Click Element  //BUTTON[@mat-flat-button='']
	# Set Selenium Speed    ${DELAY}
	
     # ${new user1} =   SeleniumLibrary.Get Value    //input[@id="secretCode"]
     # Set Selenium Speed    ${DELAY}
      # ${a1} =  Otp Test     ${new user1}
      # Set Selenium Speed    ${DELAY}
     # Input Text     //input[@name="authCode"]   ${a1}
     # Set Selenium Speed    ${DELAY}
     # Click Element   //BUTTON[@mat-flat-button='']
     # Set Selenium Speed    ${DELAY}
     
     
    Input Text    //input[@name="email"]    ${Email}
  Set Selenium Speed    3 seconds
	Input Text    //input[@name="password"]   ${Password} 
	Set Selenium Speed   3 seconds
	Click Element  //BUTTON[@mat-flat-button='']
	Set Selenium Speed  3 seconds
     ${b1} =  Otp Test   ${secret code}
      #${new user1}
     Set Selenium Speed    ${DELAY}
    Input Text   //*[@id="authCodeInput"]  ${b1}
    Set Selenium Speed    ${DELAY}
  SeleniumLibrary.Click Element   //BUTTON[@mat-flat-button='']
	Set Selenium Speed    ${DELAY}
	SeleniumLibrary.Click Element    //div[@class="dashboard"]
    Set Selenium Speed    ${DELAY}
    
	 Click Element    //span[@class="dashboard-header__profile-icon"]
	 Set Selenium Speed    ${DELAY}
	 Click Element    //*[@id="cdk-overlay-0"]/div/div/button[3]
	 Set Selenium Speed    ${DELAY}
	 Input Text    //input[@name="userFilter"]    rnvenkateshwari+1soa1@gmail.com
	 Set Selenium Speed    ${DELAY}
   
    
    Click Element    //th[@class="title-test mat-header-cell ng-tns-c26-8 cdk-column-action mat-column-action ng-star-inserted"]
	 Set Selenium Speed    ${DELAY}
	Click Element    //div[@class="mat-sort-header-arrow ng-trigger ng-trigger-arrowPosition ng-tns-c26-8 ng-star-inserted"]
	 Set Selenium Speed    ${DELAY}
	Click Element    xpath=(//div[@class="mat-sort-header-pointer-right ng-trigger ng-trigger-rightPointer"])[5]
	 Set Selenium Speed    ${DELAY}
	Click Element    //mat-icon[@class="margin--bottom--lg mat-icon notranslate material-icons mat-icon-no-color"]
	 Set Selenium Speed    ${DELAY}
	Click Element    xpath=(//label[@class="menu-item-label"])[3]
	 Set Selenium Speed    ${DELAY}
	Click Element    xpath=(//div[@class="mat-select-arrow-wrapper"])[2]
	 Set Selenium Speed    ${DELAY}
	 
	  # Click Element      //input[starts-with(@id, "mat")]
	  
	Click Element     //*[@id="mat-option-4"]/span  #subscriber
	
	Set Selenium Speed    ${DELAY}
	Click Element    (//SPAN[@class='mat-button-wrapper'])[5]


 Manage users page change user to Publisher
 
    Open Browser  https://sense-dev.com/sdx/home     ${BROWSER} 
   Set Selenium Speed    ${DELAY}
    Delete All Cookies
    Maximize Browser Window 
   Click Element    //*[@id="nav-login"]
	# Input Text    //input[@name="email"]    ${Email}
	# Set Selenium Speed    ${DELAY}
	# Input Text    //input[@name="password"]   ${Password} 
	# Set Selenium Speed    ${DELAY}
	# Click Element  //BUTTON[@mat-flat-button='']
	# Set Selenium Speed    ${DELAY}
	
     # ${new user1} =   SeleniumLibrary.Get Value    //input[@id="secretCode"]
     # Set Selenium Speed    ${DELAY}
      # ${a1} =  Otp Test     ${new user1}
      # Set Selenium Speed    ${DELAY}
     # Input Text     //input[@name="authCode"]   ${a1}
     # Set Selenium Speed    ${DELAY}
     # Click Element   //BUTTON[@mat-flat-button='']
     # Set Selenium Speed    ${DELAY}
     
     
    Input Text    //input[@name="email"]    ${Email}
  Set Selenium Speed    3 seconds
	Input Text    //input[@name="password"]   ${Password} 
	Set Selenium Speed   3 seconds
	Click Element  //BUTTON[@mat-flat-button='']
	Set Selenium Speed  3 seconds
     ${b1} =  Otp Test   ${secret code}
      #${new user1}
     Set Selenium Speed    ${DELAY}
    Input Text   //*[@id="authCodeInput"]  ${b1}
    Set Selenium Speed    ${DELAY}
  SeleniumLibrary.Click Element   //BUTTON[@mat-flat-button='']
	Set Selenium Speed    ${DELAY}
	SeleniumLibrary.Click Element    //div[@class="dashboard"]
    Set Selenium Speed    ${DELAY}
    
	 Click Element    //span[@class="dashboard-header__profile-icon"]
	 Set Selenium Speed    ${DELAY}
	 Click Element    //*[@id="cdk-overlay-0"]/div/div/button[3]
	 Set Selenium Speed    ${DELAY}
	 Input Text    //input[@name="userFilter"]    rnvenkateshwari+1soa1@gmail.com
	 Set Selenium Speed    ${DELAY}
   
    
    Click Element    //th[@class="title-test mat-header-cell ng-tns-c26-8 cdk-column-action mat-column-action ng-star-inserted"]
	 Set Selenium Speed    ${DELAY}
	Click Element    //div[@class="mat-sort-header-arrow ng-trigger ng-trigger-arrowPosition ng-tns-c26-8 ng-star-inserted"]
	 Set Selenium Speed    ${DELAY}
	Click Element    xpath=(//div[@class="mat-sort-header-pointer-right ng-trigger ng-trigger-rightPointer"])[5]
	 Set Selenium Speed    ${DELAY}
	Click Element    //mat-icon[@class="margin--bottom--lg mat-icon notranslate material-icons mat-icon-no-color"]
	 Set Selenium Speed    ${DELAY}
	Click Element    xpath=(//label[@class="menu-item-label"])[3]
	 Set Selenium Speed    ${DELAY}
	Click Element    xpath=(//div[@class="mat-select-arrow-wrapper"])[2]
	 Set Selenium Speed    ${DELAY}
   
   
    Click Element     //*[@id="mat-option-5"]/span  #pub
	Click Element    (//SPAN[@class='mat-button-wrapper'])[5]
 
 
 Manage users page change user to Super admin
 
    Open Browser  https://sense-dev.com/sdx/home     ${BROWSER} 
   Set Selenium Speed    ${DELAY}
    Delete All Cookies
    Maximize Browser Window 
   Click Element    //*[@id="nav-login"]
	# Input Text    //input[@name="email"]    ${Email}
	# Set Selenium Speed    ${DELAY}
	# Input Text    //input[@name="password"]   ${Password} 
	# Set Selenium Speed    ${DELAY}
	# Click Element  //BUTTON[@mat-flat-button='']
	# Set Selenium Speed    ${DELAY}
	
     # ${new user1} =   SeleniumLibrary.Get Value    //input[@id="secretCode"]
     # Set Selenium Speed    ${DELAY}
      # ${a1} =  Otp Test     ${new user1}
      # Set Selenium Speed    ${DELAY}
     # Input Text     //input[@name="authCode"]   ${a1}
     # Set Selenium Speed    ${DELAY}
     # Click Element   //BUTTON[@mat-flat-button='']
     # Set Selenium Speed    ${DELAY}
     
     
    Input Text    //input[@name="email"]    ${Email}
  Set Selenium Speed    3 seconds
	Input Text    //input[@name="password"]   ${Password} 
	Set Selenium Speed   3 seconds
	Click Element  //BUTTON[@mat-flat-button='']
	Set Selenium Speed  3 seconds
     ${b1} =  Otp Test   ${secret code}
      #${new user1}
     Set Selenium Speed    ${DELAY}
    Input Text   //*[@id="authCodeInput"]  ${b1}
    Set Selenium Speed    ${DELAY}
  SeleniumLibrary.Click Element   //BUTTON[@mat-flat-button='']
	Set Selenium Speed    ${DELAY}
	SeleniumLibrary.Click Element    //div[@class="dashboard"]
    Set Selenium Speed    ${DELAY}
    
	 Click Element    //span[@class="dashboard-header__profile-icon"]
	 Set Selenium Speed    ${DELAY}
	 Click Element    //*[@id="cdk-overlay-0"]/div/div/button[3]
	 Set Selenium Speed    ${DELAY}
	 Input Text    //input[@name="userFilter"]    rnvenkateshwari+1soa1@gmail.com
	 Set Selenium Speed    ${DELAY}
   
    
    Click Element    //th[@class="title-test mat-header-cell ng-tns-c26-8 cdk-column-action mat-column-action ng-star-inserted"]
	 Set Selenium Speed    ${DELAY}
	Click Element    //div[@class="mat-sort-header-arrow ng-trigger ng-trigger-arrowPosition ng-tns-c26-8 ng-star-inserted"]
	 Set Selenium Speed    ${DELAY}
	Click Element    xpath=(//div[@class="mat-sort-header-pointer-right ng-trigger ng-trigger-rightPointer"])[5]
	 Set Selenium Speed    ${DELAY}
	Click Element    //mat-icon[@class="margin--bottom--lg mat-icon notranslate material-icons mat-icon-no-color"]
	 Set Selenium Speed    ${DELAY}
	Click Element    xpath=(//label[@class="menu-item-label"])[3]
	 Set Selenium Speed    ${DELAY}
	Click Element    xpath=(//div[@class="mat-select-arrow-wrapper"])[2]
	 Set Selenium Speed    ${DELAY}
   
   
    Click Element     //*[@id="mat-option-6"]/span  #super admin
	Click Element    (//SPAN[@class='mat-button-wrapper'])[5]
	
Manage users page change user to admin	
	
	 Open Browser  https://sense-dev.com/sdx/home     ${BROWSER} 
   Set Selenium Speed    ${DELAY}
    Delete All Cookies
    Maximize Browser Window 
   Click Element    //*[@id="nav-login"]
	# Input Text    //input[@name="email"]    ${Email}
	# Set Selenium Speed    ${DELAY}
	# Input Text    //input[@name="password"]   ${Password} 
	# Set Selenium Speed    ${DELAY}
	# Click Element  //BUTTON[@mat-flat-button='']
	# Set Selenium Speed    ${DELAY}
	
     # ${new user1} =   SeleniumLibrary.Get Value    //input[@id="secretCode"]
     # Set Selenium Speed    ${DELAY}
      # ${a1} =  Otp Test     ${new user1}
      # Set Selenium Speed    ${DELAY}
     # Input Text     //input[@name="authCode"]   ${a1}
     # Set Selenium Speed    ${DELAY}
     # Click Element   //BUTTON[@mat-flat-button='']
     # Set Selenium Speed    ${DELAY}
     
     
    Input Text    //input[@name="email"]    ${Email}
  Set Selenium Speed    3 seconds
	Input Text    //input[@name="password"]   ${Password} 
	Set Selenium Speed   3 seconds
	Click Element  //BUTTON[@mat-flat-button='']
	Set Selenium Speed  3 seconds
     ${b1} =  Otp Test   ${secret code}
      #${new user1}
     Set Selenium Speed    ${DELAY}
    Input Text   //*[@id="authCodeInput"]  ${b1}
    Set Selenium Speed    ${DELAY}
  SeleniumLibrary.Click Element   //BUTTON[@mat-flat-button='']
	Set Selenium Speed    ${DELAY}
	SeleniumLibrary.Click Element    //div[@class="dashboard"]
    Set Selenium Speed    ${DELAY}
    
	 Click Element    //span[@class="dashboard-header__profile-icon"]
	 Set Selenium Speed    ${DELAY}
	 Click Element    //*[@id="cdk-overlay-0"]/div/div/button[3]
	 Set Selenium Speed    ${DELAY}
	 Input Text    //input[@name="userFilter"]    rnvenkateshwari+1soa1@gmail.com
	 Set Selenium Speed    ${DELAY}
   
    
    Click Element    //th[@class="title-test mat-header-cell ng-tns-c26-8 cdk-column-action mat-column-action ng-star-inserted"]
	 Set Selenium Speed    ${DELAY}
	Click Element    //div[@class="mat-sort-header-arrow ng-trigger ng-trigger-arrowPosition ng-tns-c26-8 ng-star-inserted"]
	 Set Selenium Speed    ${DELAY}
	Click Element    xpath=(//div[@class="mat-sort-header-pointer-right ng-trigger ng-trigger-rightPointer"])[5]
	 Set Selenium Speed    ${DELAY}
	Click Element    //mat-icon[@class="margin--bottom--lg mat-icon notranslate material-icons mat-icon-no-color"]
	 Set Selenium Speed    ${DELAY}
	Click Element    xpath=(//label[@class="menu-item-label"])[3]
	 Set Selenium Speed    ${DELAY}
	Click Element    xpath=(//div[@class="mat-select-arrow-wrapper"])[2]
	 Set Selenium Speed    ${DELAY}
	Click Element    //*[@id="mat-option-3"]/span    #admin
	
	Set Selenium Speed    ${DELAY}
	Click Element    (//SPAN[@class='mat-button-wrapper'])[5]
	
 	
MFA_new user_create project_create topic
    #[dont change this code-this is MFA, LOGIN ] 
    Open Browser  https://sense-dev.com/sdx/home     ${BROWSER} 
   Set Selenium Speed    ${DELAY}
    Delete All Cookies
    Maximize Browser Window 
   Click Element    //*[@id="nav-login"]
	Input Text    //input[@name="email"]    ${Email}
	Set Selenium Speed    ${DELAY}
	Input Text    //input[@name="password"]   ${Password} 
	Set Selenium Speed    ${DELAY}
	Click Element  //BUTTON[@mat-flat-button='']
	Set Selenium Speed    ${DELAY}
     ${new user1} =   SeleniumLibrary.Get Value    //input[@id="secretCode"]
     Set Selenium Speed    ${DELAY}
      ${a1} =  Otp Test    ${new user1}
      Set Selenium Speed    ${DELAY}
     Input Text     //input[@name="authCode"]   ${a1}
     Set Selenium Speed    ${DELAY}
     Click Element   //BUTTON[@mat-flat-button='']
     Set Selenium Speed    ${DELAY}
     
     
    Input Text    //input[@name="email"]    ${Email}
  Set Selenium Speed    3 seconds
	Input Text    //input[@name="password"]   ${Password} 
	Set Selenium Speed   3 seconds
	Click Element  //BUTTON[@mat-flat-button='']
	Set Selenium Speed  3 seconds
     ${b1} =  Otp Test    ${new user1}
     Set Selenium Speed    ${DELAY}
    Input Text   //*[@id="authCodeInput"]  ${b1}
    Set Selenium Speed    ${DELAY}
  SeleniumLibrary.Click Element   //BUTTON[@mat-flat-button='']
	Set Selenium Speed    ${DELAY}
	SeleniumLibrary.Click Element    //div[@class="dashboard"]
    Set Selenium Speed    ${DELAY}
	Click Element    //div[@class="side-nav__icon-wrapper"]
	Click Element    xpath=(//span[@class="side-nav__label"])[2]
	Click Element    //span[@class="mat-button-wrapper"]
	
	Click Element    //button[@id="new-project-btn"]
	${secs} =    Get Time    epoch
	Input Text    xpath=//input[@id="project-name-input"]     Project venka auto14 ${secs} 
	
	Click Element    //*[@id="project-type-input"]
	Click Element     //SPAN[@class='mat-option-text'][text()=' Publish ']

	#//span[@class="mat-option-text"]
	
	# Click Element    //div[@class="mat-select-value"]
    
    
	Input Text   //input[@formcontrolname="fromDate"]    23-06-2020
	Press Key  //input[@formcontrolname="fromDate"]  \\13
	Input Text    //input[@formcontrolname="toDate"]    27-07-2020
	Press Key  //input[@formcontrolname="toDate"]   \\13
	 
	
		Input Text    //textarea[@id="project-desc-input"]     test
	Click Element    //*[@id="project-create-btn"]
	capture page screenshot
	 
	
	
	Set Selenium Speed    1
	
	
	# Create a topic
	Click Element    //span[@class="mat-button-wrapper"]
	Set Selenium Speed    ${DELAY}
	Click Element    //button[@id="new-topic-btn"]
	Set Selenium Speed    ${DELAY}
	Click Element    //div[@class="mat-radio-label-content"]
	Set Selenium Speed    ${DELAY}
	Click Element    //span[@class="mat-button-wrapper"]
	Set Selenium Speed    ${DELAY}
	
	Click Element    xpath=(//div[@class="mat-radio-label-content"])[5]
	Set Selenium Speed    ${DELAY}
	
	Click Element    xpath=(//mat-icon[@class="mat-icon notranslate material-icons mat-icon-no-color"])[3]
	Set Selenium Speed    ${DELAY}
	
	Click Element    xpath=(//div[@class="mat-form-field-infix"])[2]
	Set Selenium Speed    ${DELAY}
	
	Click Element      xpath=(//span[@class="mat-option-text"])[2]
	Set Selenium Speed    ${DELAY}
	
	Click Element    xpath=(//div[@class="mat-form-field-infix"])[3]
	Set Selenium Speed    ${DELAY}
	${secs1} =    Get Time    epoch
	Input Text    //input[@name="name"]    test-robo-june-25-5 ${secs1}
	Set Selenium Speed    ${DELAY}
	
		Click Element    xpath=(//span[@class="mat-button-wrapper"])[5]
		Set Selenium Speed    ${DELAY}
	
      
       Input Text    //textarea[@formcontrolname="description"]   sensors
       Set Selenium Speed    ${DELAY}
	
       
      
	Input Text    //*[@id="tag-input"]   test
	
   Press Key    //*[@id="tag-input"]  \\13
	
	
	Set Selenium Speed    ${DELAY}

#	Is approval needed for subscription requests?
	Click Element  //*[@id="mat-radio-10"]

	Set Selenium Speed    ${DELAY}
	Click Element     //*[@id="mat-radio-10"]/label/div[1]/div[2]
#Is approval needed for subscription requests?


	Set Selenium Speed    ${DELAY}
	Click Element   //*[@id="mat-radio-13"]
	Set Selenium Speed    ${DELAY}
   Click Element    //*[@id="mat-radio-13"]/label/div[1]/div[2]
	    
	  Set Selenium Speed    ${DELAY}
	# Click Element   //DIV[@class='mat-select-arrow-wrapper']/self::DIV
	
	# Set Selenium Speed    ${DELAY}
	# Click Element   (//MAT-PSEUDO-CHECKBOX[@class='mat-option-pseudo-checkbox mat-pseudo-checkbox ng-star-inserted mat-pseudo-checkbox-checked'])[1]
	 # Set Selenium Speed    ${DELAY}
     Click Element    xpath=(//span[@class="mat-button-wrapper"])[7]
	
		   Set Selenium Speed    ${DELAY}
	    
	    Click Element    //span[@class="dashboard-header__profile-icon"]
	Set Selenium Speed    ${DELAY}
	
      Click Element    //button[@class="mat-menu-item cdk-focused cdk-mouse-focused"]
 
    
    