echo Making Link
SET HYBRIS_BIN=D:\HY5.1\hybris-commerce-suite-5.5.1.0\hybris\bin
SET CODEBASE_HOME=D:\Repo\TCS_COMMERCE_REPO
rmdir %HYBRIS_BIN%\custom
mklink /j %HYBRIS_BIN%\custom %CODEBASE_HOME%\ext