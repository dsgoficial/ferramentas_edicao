@echo off
@REM set OSGEO4W_ROOT="C:\Program Files\QGIS 3.24.3"
set OSGEO4W_ROOT=%1
set OSGEO4W_ROOT=%OSGEO4W_ROOT:"=%
call "%OSGEO4W_ROOT%\bin\o4w_env.bat"
@echo off
path %OSGEO4W_ROOT%\apps\qgis\bin;%PATH%
set QGIS_PREFIX_PATH=%OSGEO4W_ROOT:\=/%/apps/qgis
set GDAL_FILENAME_IS_UTF8=YES
set VSI_CACHE=TRUE
set VSI_CACHE_SIZE=1000000
set PYTHONPATH=%OSGEO4W_ROOT%\apps\qgis\python;%PYTHONPATH%
cd ..
"%PYTHONHOME%\python" -m ferramentas_edicao.standalone %*
