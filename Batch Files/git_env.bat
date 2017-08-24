echo Making Link
SET HYBRIS_CONFIG=C:\hy\hybris\config
SET HYBRIS_BIN=C:\hy\hybris\bin
SET CODEBASE_HOME=C:\codebase\
copy /y %CODEBASE_HOME%\config\* %HYBRIS_CONFIG%
mklink /d %HYBRIS_BIN%\custom %CODEBASE_HOME%\ext