@echo off
@REM Uso: setup_env.bat "C:\Program Files\QGIS 4.0.0" -l USUARIO -s SENHA -ef "C:\saida" -t "Carta Topografica 2.0" -j "...json" [-et] [-etwg] [-dam]
@REM O 1o argumento e a pasta de instalacao do QGIS 4 (vira OSGEO4W_ROOT no bat e pathQgis no standalone).
@REM Ajuste QT_DIR / GRASS_DIR / PYTHON_DIR aos nomes em apps\ da sua instalacao do QGIS 4.
set OSGEO4W_ROOT=%1
set OSGEO4W_ROOT=%OSGEO4W_ROOT:"=%
SET QT_DIR=Qt6
SET GRASS_DIR=grass84
SET PYTHON_DIR=Python312
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
set QT_PLUGIN_PATH=%OSGEO4W_ROOT%\apps\qgis\qtplugins;%OSGEO4W_ROOT%\apps\%QT_DIR%\plugins
path %PATH%;%OSGEO4W_ROOT%\apps\%PYTHON_DIR%\Scripts
set PYTHONPATH=%OSGEO4W_ROOT%\apps\qgis\python;%UserProfile%\AppData\Roaming\QGIS\QGIS4\profiles\default\python\plugins;%PYTHONPATH%
set PATH=%OSGEO4W_ROOT%\apps\qgis\bin;%OSGEO4W_ROOT%\apps\qgis\python\plugins;%OSGEO4W_ROOT%\apps\qgis\python\plugins\processing;%PATH%
set PYTHONHOME=%OSGEO4W_ROOT%\apps\%PYTHON_DIR%
cd /d "%~dp0.."
"%PYTHONHOME%\python" -m ferramentas_edicao.standalone %*
