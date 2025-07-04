@echo off

:: GDAL init updates the DIR variable
SET RASROOT=%~dp0

:: Put this on the path so we can access ./ras
SET PATH=%PATH%;%RASROOT%

:: Init GDAL too
call "%RASROOT%GDAL/EnvironmentInit.bat"

@echo on
@echo RAS environment initialized to %RASROOT%
@ras --version
@echo Run 'ras --help' to see command options.