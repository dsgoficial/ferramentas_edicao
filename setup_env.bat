@echo off
@REM set OSGEO4W_ROOT="C:\Program Files\QGIS 3.24.3"
set OSGEO4W_ROOT=%1
set OSGEO4W_ROOT=%OSGEO4W_ROOT:"=%
SET QT_DIR=Qt5
SET GRASS_DIR=grass78
SET PYTHON_DIR=Python39
call "%OSGEO4W_ROOT%\bin\o4w_env.bat"
call "%OSGEO4W_ROOT%\apps\grass\%GRASS_DIR%\etc\env.bat"
@echo off
path %OSGEO4W_ROOT%\apps\qgis\bin;%PATH%
path %PATH%;%OSGEO4W_ROOT%\apps\grass\%GRASS_DIR%\lib
path %PATH%;%OSGEO4W_ROOT%\apps\%QT_DIR%\bin
set QGIS_PREFIX_PATH=%OSGEO4W_ROOT:\=/%/apps/qgis
set GDAL_FILENAME_IS_UTF8=YES
set VSI_CACHE=TRUE
set VSI_CACHE_SIZE=1000000
set QT_PLUGIN_PATH=%OSGEO4W_ROOT%\apps\qgis\qtplugins;%OSGEO4W_ROOT%\apps\qt5\plugins
path %PATH%;%OSGEO4W_ROOT%\apps\%PYTHON_DIR%\Scripts
set PYTHONPATH=%OSGEO4W_ROOT%\apps\qgis\python;%UserProfile%\AppData\Roaming\QGIS\QGIS3\profiles\default\python\plugins;%PYTHONPATH%
set PATH=%OSGEO4W_ROOT%\apps\qgis\bin;%OSGEO4W_ROOT%\apps\qgis\python\plugins;PATH=%OSGEO4W_ROOT%\apps\qgis\python\plugins\processing;%PATH%
set PYTHONHOME=%OSGEO4W_ROOT%\apps\%PYTHON_DIR%
cd ..
"%PYTHONHOME%\python" -m ferramentas_edicao.standalone %*
