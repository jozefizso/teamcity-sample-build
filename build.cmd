@echo off

echo ##teamcity[blockOpened name='build' description='Compile project']
echo Building project using build script.
echo   Project1 -^> Project1.dll
echo Build complete.
echo ##teamcity[blockClosed name='build']

echo ##teamcity[blockOpened name='nunit3' description='Running tests']
echo nunit3-console
echo Testing Project1.Tests.dll

echo ##teamcity[testSuiteStarted name='Project1.Tests.dll' flowId='0-1124']
echo ##teamcity[flowStarted flowId='0-1002' parent='0-1124']
echo ##teamcity[testStarted name='Project1.isAuthenticated_AnyLogonUserResult_AlwaysClosesHandle(True)' captureStandardOutput='false' flowId='0-1002']
echo ##teamcity[testFinished name='Project1.isAuthenticated_AnyLogonUserResult_AlwaysClosesHandle(True)' duration='356' flowId='0-1002']
echo ##teamcity[flowFinished flowId='0-1002']
echo ##teamcity[flowStarted flowId='0-1003' parent='0-1124']
echo ##teamcity[testStarted name='Project1.isAuthenticated_AnyLogonUserResult_AlwaysClosesHandle(False)' captureStandardOutput='false' flowId='0-1003']
echo ##teamcity[testFinished name='Project1.isAuthenticated_AnyLogonUserResult_AlwaysClosesHandle(False)' duration='16' flowId='0-1003']
echo ##teamcity[flowFinished flowId='0-1003']
echo ##teamcity[testSuiteFinished name='Project1.Tests.dll' flowId='0-1124']

echo Testing complete.
echo ##teamcity[blockClosed name='nunit3']
