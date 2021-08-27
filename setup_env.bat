@echo off
set OSGEO4W_ROOT="C:\Program Files\QGIS 3.20.1"
set OSGEO4W_ROOT=%OSGEO4W_ROOT:"=%
call "%OSGEO4W_ROOT%\bin\o4w_env.bat"
@echo off
path %OSGEO4W_ROOT%\apps\qgis\bin;%PATH%
set QGIS_PREFIX_PATH=%OSGEO4W_ROOT:\=/%/apps/qgis
@REM set GDAL_FILENAME_IS_UTF8=YES
rem Set VSI cache to be used as buffer, see #6448
@REM set VSI_CACHE=TRUE
@REM set VSI_CACHE_SIZE=1000000
@REM set QT_PLUGIN_PATH=%OSGEO4W_ROOT%\apps\qgis\qtplugins;%OSGEO4W_ROOT%\apps\qt5\plugins
set PYTHONPATH=%OSGEO4W_ROOT%\apps\qgis\python;%PYTHONPATH%
cd ..
"%PYTHONHOME%\python" -m plugin_edicao.standalone %*