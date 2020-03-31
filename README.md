# IBM BAW - Common Toolkit

This repository is created to share the components and service integrations which can be used inside BAW projects frequently.
By using this toolkit you can use below functionalities inside your Process Applications;

* Parameter Service: Helps to consolidate parameters such as Gender, Decision Values etc. 
	* Add New Parameters
	* Modify existing parameters
	* Bind parameters into UI components such SingleSelect, RadioButtonGroup etc.
* City, Country and County Service
* Custom SingleSelect component which is binded to a parameter list via code which allows you to list all parameters with relavant code on your UI. 

## Define JDBC Resource on WAS
* Open your WAS Console
* Go to Resources > JDBC > Data Sources and click one of the existing data sources.  Under Related Items, click JAAS - J2C authentication data
* Click New and set the fields Alias, User ID, and Password. For example, this procedure uses the following values: 
	* 	 

## Importing Toolkit

* Open IBM BAW Workflow Center - https://YOURIP:PORT/WorkflowCenter/
* Go to Toolkits
* Click Import and upload latest version of the .twx file from our repository. 
* 