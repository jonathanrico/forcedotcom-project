liv
===

###Residential Portal Force.com App

---

###Developers :

#### READ FIRST BEFORE MAKING CHANGES :

Make sure you un-track ALL the properties files before staging any files by using the following commands :
`git update-index --assume-unchanged build/local-build.properties`
`git update-index --assume-unchanged build/main-build.properties`
`git update-index --assume-unchanged build/patch-build.properties`
`git update-index --assume-unchanged build/freeze-build.properties`
`git update-index --assume-unchanged build/prod-build.properties`

Also, remove any .gitignore files from any of the component folders once a file is added to that folder.
e.g. remove /triggers/.gitignore once a trigger is added to the folder


#### How to build the application :

1. Update the local-build.properties with your credentials. 
   **NOTE: If you're building against a Sandbox or Production environment, set the "guestLicense" property to empty**
2. Navigate to the build folder using the terminal or command prompt
3. If you're using **OS X** run the following command : `sh build.sh local`
4. If you're using **Windows** run the following command : `build local deploy`
5. If you want to run the ant target directly use the following command : `ant deploy -Dbuild_props=local-build.properties -DrunAllTests=false -DcheckOnly=false`

---
