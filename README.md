Sample App
===

## Description

Project Description goes here..

---
## Developers

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

0. Make sure ant is installed in your local box
1. Navigate to the build folder : `cd build`
2. Clone the `sfdc-build.sample` file and re-name it to `sfdc-build.properties`
3. Update your `sfdc-build.properties` with your credentials and endpoint.

   **If you're deploying against a non-https environment, make sure you un-comment `protocol=http` line in the properties file**

   **If you're deploying against a Sandbox or Production environment with Sites enabled, set the "guestLicense" property to empty**

3. Retrieve metadata by running the retrieve target `ant retrieve`
4. Remove any of the metadata folders that are not being used by your project

#### How to deploy using Ant :

1. Navigate to the build folder : `cd build`
2. Deploy to your org with the following command : `ant deploy -DrunAllTests=false -DcheckOnly=false`

#### How to create new files :

You'll have to create them in Salesforce and then run the retrieve target or create them manually in your editor.