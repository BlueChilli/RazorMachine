@ECHO OFF 

set COMMITCOMMENT=%1
IF [%COMMITCOMMENT%] EQU [] goto :nocomment
IF [%COMMITCOMMENT%] EQU [""] goto :nocomment

@ECHO ON

nuget pack "Source\Xipton.Razor.nuspec"

nuget push "Source\*.nupkg" 1660902d-ef34-4ce3-8217-bef69d90ba6b -s https://www.myget.org/F/bluechilli-new/api/v2/package
