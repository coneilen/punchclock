IF NOT EXIST .\lib\netstandard2.0 mkdir lib\netstandard2.0
copy .\Punchclock\bin\Release\netstandard2.0\Punchclock.dll .\lib\netstandard2.0
copy .\Punchclock\bin\Release\netstandard2.0\Punchclock.pdb .\lib\netstandard2.0
..\tools\nuget\nuget.exe pack .\Punchclock_Microsoft.nuspec
REM ..\tools\vstsnuget\nuget.exe sources Add -Name "MsnApps" -Source "https://microsoft.pkgs.visualstudio.com/_packaging/MsnApps/nuget/v3/index.json"
REM ..\tools\msnuget\nuget.exe push -Source "KobolinNugetFeed" -ApiKey AzureDevOps .\Punchclock_Microsoft.1.0.0.0.nupkg
..\tools\vstsnuget\nuget.exe push -Source "MsnApps" -ApiKey AzureDevOps .\Punchclock_Microsoft.1.0.0.0.nupkg