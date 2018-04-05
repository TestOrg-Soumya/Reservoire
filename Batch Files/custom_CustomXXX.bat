echo Making Link
SET HYBRIS_BIN=D:\Hybris_2\hybris\bin
SET CODEBASE_HOME=D:\Repo\CustomXXX
rmdir %HYBRIS_BIN%\custom
mklink /j %HYBRIS_BIN%\custom %CODEBASE_HOME%\xxx