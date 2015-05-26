Sample App
===

###Sample App Description

---
###Developers :

#### How to use this template:

1. Start by cloning this template into a new folder
`git clone https://github.com/jonathanrico/forcedotcom-project.git my-new-project`
2. Cd to your new project directory and open this folder in your favorite text editor.
`cd my-new-project`
3. If you decide to fork this project, you'll have to remove the origin from the original repo
`git remote rm origin`
4. Link your project to an existing remote repository
`git remote add origin https://github.com/yourusername/my-new-project.git`


#### How to initialize your Force.com project :

1. Make sure ant is installed in your local box
2. Update your credentials by making a copy of the sample-sfdc-build.properties file and renaming it to "sfdc-build.properties"
3. Run the retrieve target with `ant retrieve`

#### How to deploy the application using Ant :

1. Update the sfdc-build.properties with your credentials.
   **NOTE: If you're building against a Sandbox or Production environment with Sites enabled, set the "guestLicense" property to empty**
2. Navigate to the build folder using the terminal or command prompt
3. If you're using **OS X** run the following command : `sh build.sh`
5. If you want to run the ant target directly use the following command : `ant deploy -DrunAllTests=false -DcheckOnly=false
