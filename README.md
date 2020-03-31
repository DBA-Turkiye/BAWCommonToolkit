# IBM BAW - Common Toolkit

This repository is created to share the components and service integrations which can be used inside BAW projects frequently.
By using this toolkit you can use below functionalities inside your Process Applications;

* Parameter Service: Helps to consolidate parameters such as Gender, Decision Values etc. 
	* Add New Parameters
	* Modify existing parameters
	* Bind parameters into UI components such SingleSelect, RadioButtonGroup etc.
* City, Country and County Service
* Custom SingleSelect component which is binded to a parameter list via code which allows you to list all parameters with relavant code on your UI. 

## Create Database Tables
You can find the required scripts for this toolkit under SQL Scripts directory. You should execute all of these scripts on your database that you are planning to use with this toolkit. 

## Define JDBC Resource on WAS
* Open your WAS Console
* Go to Resources > JDBC > Data Sources and click one of the existing data sources.  Under Related Items, click JAAS - J2C authentication data
* Click New and set the fields Alias, User ID, and Password. For example, this procedure uses the following values: 
	* Alias: DB2_Cloud_Alias	 
	* User ID: db2admin
* After defining Authentication data we are ready to define data source. 
* Go to Resources > JDBC > DataSources and click New to create a new Data Source. Follow the wizard with below parameters;
	* Step 1: Crate a Data Source
		* Data Source Name: IBMCloudDB2
		* JNDI Name: jdbc/IBMCloudDB2
		* Next
	* Step 2: Select JDBC Provider
		* DB2 Using IBM JCC Driver (XA)
		* Next
	* Step 3: Enter database specific properties for the data source 
		* Driver Type: 4
		* Database Name: BLUDB - You can use another database name.
		* Server Name: URL of your DB2 Server
		* Port Number: 50000 
		* Check Use this data source in CMP
		* Next
	* Step 4: Setup Security Aliases
		* Select the alias that you recently created for all options except Mapping-configuration alias. It should be set to (none)
		* Next
	* Step 5: Summary  	  
		* Check all options and values and if they are correct click Finish.

After pushing your changes to WAS and restarting the app server, you are ready to use your data source inside BAW Process Application. 
		
 		 	

## Importing Toolkit

* Open IBM BAW Workflow Center - https://YOURIP:PORT/WorkflowCenter/
* Go to Toolkits
* Click Import and upload latest version of the .twx file from our repository. 
* After clicking OK new toolkit will appear inside Toolkit window. 

### Change Environment Variables

* Open the toolkit from Workfow Center
* Go to Toolkit Settings 
	* Open Environment Variables and edit DataSourceName Environment Variable if you did not use "jdbc/IBMCloudDB2 as the JNDI name.

## Toolkit Services Details

### Parameter Services

Below services are used by the User Interface called ParameterInput in order to add, update and list parameters in the database. Before using a parameter, you should define it by using this UI. 

* AddNewParameter
* GetAllParameters
* GetParameterByCode
* UpdateParameter

### Views

**SingleSelectParameter**: It can be used to list parameters inside a single select component. GetParameterByCode service is binded to this component. You can pass the parameter code which you want to use with this component as a configuration parameter. This configuration parameter is passed to the service and related parameters can be listed inside a Single Select.
You can use this component for requirements like Gender, City, Yes/No etc. 

![](https://raw.githubusercontent.com/DBA-Turkiye/BAWCommonToolkit/master/Documentation/images/SingleSelectParameter.png)

Below components have same behavior and functionality with SingleSelectParameter
* Multiple Select Parameter
* Radio Group Parameter
* Checkbox Group Parameter


 