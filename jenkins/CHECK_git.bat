:: CHECK_git.bat
:: \brief Checks git version for AFSIM from LQ Subversion repository and wsf_giant plugin
::
:: Instructions
:: Place this batch file in the <AFSIM_HOME>\jenkins folder.  Execute manually from <AFSIM_HOME>.
@echo off

SETLOCAL
:: ASSUMES Git is available via the user PATH envronment variable.
git --version
set STATUS=%ERRORLEVEL%

if %STATUS% NEQ 0 echo "Git version failed.  "
EXIT /b %STATUS%
ENDLOCAL

