echo Copying necessary config files
SET HYBRIS_HOME=D:\HY5.1\hybris-commerce-suite-5.5.1.0\hybris
SET HYBRIS_CUSTOM=D:\HY5.1\hybris-commerce-suite-5.5.1.0\hybris\bin\custom
SET WEB_XML_FILE_PATH=marketplace\marketplacestorefront\web\webroot\WEB-INF
SET SPRING_SECURITY_XML_FILE_PATH=marketplace\marketplacestorefront\web\webroot\WEB-INF\config
copy /y %HYBRIS_HOME%\web.xml %HYBRIS_CUSTOM%\%WEB_XML_FILE_PATH%\web.xml
copy /y %HYBRIS_HOME%\spring-security-config.xml %HYBRIS_CUSTOM%\%SPRING_SECURITY_XML_FILE_PATH%\spring-security-config.xml