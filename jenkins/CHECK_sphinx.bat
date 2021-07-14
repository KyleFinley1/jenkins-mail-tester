:: CHECK_sphinx.bat
:: \brief Checks Sphinx version for AFSIM from LQ Subversion repository and wsf_giant plugin
::
:: Instructions
:: Place this batch file in the <AFSIM_HOME>\jenkins folder.  Execute manually from <AFSIM_HOME>.
@echo off

SETLOCAL
:: ASSUMES Sphinx is available via the user PATH envronment variable.
pip show sphinx
set STATUS=%ERRORLEVEL%

if %STATUS% NEQ 0 echo "Sphinx version failed.  "
EXIT /b %STATUS%
ENDLOCAL

