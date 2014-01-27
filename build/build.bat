setlocal
if "%BUILD_TOOLS_HOME%" == "" set BUILD_TOOLS_HOME=
set DEPLOY_ENV=%1
set TARGET_TO_RUN=%2
if NOT "%DEPLOY_ENV%" == "" goto process
echo Environment should be passed (local/main/patch/freeze/prod)
goto end


:process
set CHECK_ONLY=false
if "%3%" == "test" set CHECK_ONLY=true

set RUN_ALL_TESTS=false

IF "%DEPLOY_ENV%" == "prod" set RUN_ALL_TESTS=true
IF "%DEPLOY_ENV%" == "freeze" set RUN_ALL_TESTS=true

set JAVA_HOME=%SFDC_TOOLS_HOME%\win32\jdk\jdk1.6.0_14
set ANT_HOME=%SFDC_TOOLS_HOME%\ant\apache-ant-1.7.1
set PATH=%JAVA_HOME%\bin;%ANT_HOME%\bin
ant %TARGET_TO_RUN% -Dbuild_props=%DEPLOY_ENV%-build.properties -DrunAllTests=%RUN_ALL_TESTS% -DcheckOnly=%CHECK_ONLY% -f build.xml
:end
endlocal