. .\psake-contrib-teamcity.ps1

TeamCity-BlockOpened 'build' 'Compile project'
"Building project using build script."
"  Project1 -> Project1.dll"
"Build complete."
TeamCity-BlockClosed 'build'


TeamCity-BlockOpened 'TestProject1' 'Run unit tests for Project 1'
"Executing TestProject1"

TeamCity-BlockOpened 'nunit3' 'Running tests'
"nunit3-console"
"Testing Project1.Tests.dll"

##teamcity[testSuiteStarted name='Project1.Tests.dll' flowId='0-1124']
##teamcity[flowStarted flowId='0-1002' parent='0-1124']
##teamcity[testStarted name='Project1.isAuthenticated_AnyLogonUserResult_AlwaysClosesHandle(True)' captureStandardOutput='false' flowId='0-1002']
##teamcity[testFinished name='Project1.isAuthenticated_AnyLogonUserResult_AlwaysClosesHandle(True)' duration='356' flowId='0-1002']
##teamcity[flowFinished flowId='0-1002']
##teamcity[flowStarted flowId='0-1003' parent='0-1124']
##teamcity[testStarted name='Project1.isAuthenticated_AnyLogonUserResult_AlwaysClosesHandle(False)' captureStandardOutput='false' flowId='0-1003']
##teamcity[testFinished name='Project1.isAuthenticated_AnyLogonUserResult_AlwaysClosesHandle(False)' duration='16' flowId='0-1003']
##teamcity[flowFinished flowId='0-1003']
##teamcity[testSuiteFinished name='Project1.Tests.dll' flowId='0-1124']

"Testing complete."
TeamCity-BlockClosed 'nunit3'

TeamCity-BlockClosed 'TestProject1'


TeamCity-BlockOpened 'PackageProject1' 'Package project as NuGet'
"Executing PackageProject1"

TeamCity-BlockOpened 'nuget' 'Create NuGet package'
"Creating NuGet package for Project1..."
"Successfully created package 'Project-1.0.0.nupkg'."

TeamCity-PublishArtifacts 'README.md'
TeamCity-BlockClosed 'nuget'

TeamCity-BlockClosed 'PackageProject1'