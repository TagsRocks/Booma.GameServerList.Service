cd GladLive.ModuleService.ASP
dotnet restore
dotnet build src/GladLive.ModuleService.ASP -c Release
cd ..

cd src/Booma.GameServerList.Service
dotnet restore
dotnet build -c Release
cd ..
cd ..

xcopy GladLive.ModuleService.ASP\src\GladLive.ModuleService.ASP\bin\Release\net451 build /s /y
xcopy src\Booma.GameServerList.Service\bin\Release build\Modules\GameServerList\ /s /y
xcopy config build /s /y

PAUSE