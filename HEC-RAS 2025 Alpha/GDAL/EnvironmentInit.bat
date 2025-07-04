@echo off

:: 64 bit initializer default
SET DIR=%~dp0
SET SUBDIR=bin64

:: Conditional set to the 32-bit initializer
IF '%1'=='x86' SET SUBDIR=bin32
IF '%1'=='32' SET SUBDIR=bin32

SET PATH=%PATH%;%DIR%\%SUBDIR%

:: WKT definitions, etc.
SET GDAL_DATA=%DIR%\common\data

:: Directory where our "proj.db" file is
SET PROJ_LIB=%DIR%\common\data

@echo on
@echo GDAL environment initialized to %DIR%
@gdalinfo --version