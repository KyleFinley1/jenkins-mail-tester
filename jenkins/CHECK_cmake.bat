:: CHECK_cmake.bat
:: \brief Checks cmake version for AFSIM from LQ Subversion repository and wsf_giant plugin
::
:: Instructions
:: Place this batch file in the <AFSIM_HOME>\jenkins folder.  Execute manually from <AFSIM_HOME>.
@echo off

SETLOCAL
:: ASSUMES Doxygen is available via the user PATH envronment variable.
cmake --version
set STATUS=%ERRORLEVEL%

if %STATUS% NEQ 0 echo "Cmake version failed.  "
EXIT /b %STATUS%
ENDLOCAL

