@echo off
set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%
set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar
set JAVA_EXE=java
"%JAVA_EXE%" -Xmx64m -cp "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %*
