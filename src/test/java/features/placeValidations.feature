Feature: Validating Place API's
@AddPlace @Regression
Scenario Outline: Verify if Place is being Succesfully added using AddPlaceAPI
	Given Add Place Payload with "<name>"  "<language>" "<address>"
	When user calls "AddPlaceAPI" with "POST" http request
	Then the API call got success with status code 200
	And "status" in response body is "OK"
	And "scope" in response body is "APP"
	And Get placeid from response
	And verify place_Id created maps to "<name>" using "getPlaceAPI"
	
Examples:
	|name 	 | language |address		   |
	|AAhouse |  English |World cross center|
	#|BBhouse | Spanish  |Sea cross center  |
@updateplace
Scenario Outline: Verify if place is being sucessfully updated using update API
		
		Given Add updateplace payload "<updateaddress>"
	 	When  user calls "updatePlaceAPI" with "POST" http request
	 	Then the API call got success with status code 200
	 	And "msg" in response body is "Address successfully updated"
	 Examples:
	 |updateaddress		|
	 |YSR District,AP	|
	 
	 
	 	

@DeletePlace @Regression
Scenario: Verify if Delete Place functionality is working

	Given DeletePlace Payload
	When user calls "deletePlaceAPI" with "POST" http request
	Then the API call got success with status code 200
	And "status" in response body is "OK"
	 


	

	
	
	
	
	
	

	
	
	