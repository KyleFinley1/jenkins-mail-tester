:: CHECK_python.bat
:: \brief Checks python version for AFSIM from LQ Subversion repository and wsf_giant plugin
::
:: Instructions
:: Place this batch file in the <AFSIM_HOME>\jenkins folder.  Execute manually from <AFSIM_HOME>.
@echo off

SETLOCAL
:: ASSUMES Python is available via the user PATH envronment variable.
python --version
set STATUS=%ERRORLEVEL%

if %STATUS% NEQ 0 echo "Python version failed.  "
EXIT /b %STATUS%
ENDLOCAL

