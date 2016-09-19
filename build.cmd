@echo off

echo ##teamcity[blockOpened name='build' description='Compile project']
echo Building project using build script.
echo   Project1 -^> Project1.dll
echo Build complete.
echo ##teamcity[blockClosed name='build']

echo ##teamcity[blockOpened name='nunit3' description='Running tests']
echo nunit3-console
echo Testing Project1.Tests.dll
echo Testing complete.
echo ##teamcity[blockClosed name='nunit3']
