
Feature: Registration Page Features
  
  
  Scenario: TC_1_12_Verify OTP screen UI
  	Given I navigate to the url "https://code-stage.whjr.one/coding/mastery/trial/register"
  	When I enter the phone number "2536253625" and select grade "3" and click on schedule now button
  	Then OTP modal with proper details and mobile number "2536253625" should be displayed
  
  
  Scenario: TC_1_13_Verify entering valid 4 digit OTP
  	Given I navigate to the url "https://code-stage.whjr.one/coding/mastery/trial/register"
  	When I enter the phone number "2536253625" and select grade "3" and click on schedule now button
  	And I enter the OTP received on mobile number "2536253625"
  	Then Validate that I am redirected to the url "https://code-stage.whjr.one/s/coding/mastery/trial/schedule"
  	
  	
  Scenario: TC_1_14_Verify entering of invalid 4 digit OTP
  	Given I navigate to the url "https://code-stage.whjr.one/coding/mastery/trial/register"
  	When I enter the phone number "2536253625" and select grade "3" and click on schedule now button
  	And I enter invalid OTP 
  	Then Error msg should be displayed on OTP Modal Popup
  
  	
  Scenario: TC_1_15_Verify Resend Via call success message
  	Given I navigate to the url "https://code-stage.whjr.one/coding/mastery/trial/register"
  	When I enter the phone number "2536253625" and select grade "3" and click on schedule now button
  	And I click on Resend via call
  	Then Validate text OTP has been sent
  	
  
  Scenario: TC_1_16_Verify via SMS
  	Given I navigate to the url "https://code-stage.whjr.one/coding/mastery/trial/register"
  	When I enter the phone number "2536253625" and select grade "3" and click on schedule now button
  	And I click on Resend via SMS
  	Then Validate text OTP has been sent
  	
  @new	
  Scenario Outline: TC_1_20_TO_23_Verify entering valid 4 digit OTP
  	Given I navigate to the url "https://code-stage.whjr.one/coding/mastery/trial/register"
  	When I enter the phone number "<mob no>" and select grade "3"
  	And I enter the OTP received on mobile number "<mob no>"
  	Then Validate that I am redirected to the url "<red_url>"
  
  Examples:
  |mob no|red_url|
  |3525534423|https://code-stage.whjr.one/s/coding/mastery/trial/schedule|
  |3525534423|https://code-stage.whjr.one/s/dashboard|
  |2983774655|https://code-stage.whjr.one/s/dashboard|
  |3880008191|https://learn-stage.whjr.one/coding/dashboard/classes|
  	
  	