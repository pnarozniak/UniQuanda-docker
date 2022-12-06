#!/bin/bash
if [ $1 -eq 1 ]
then
    dotnet-ef database update --project ./../app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj --context AuthDbContext --connection "Host=Uniquanda_Authorization_Database;Port=5432;Database=uniquanda;Username=uniquanda;Password=uniquanda"
    dotnet-ef database update --project ./../app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj --context AppDbContext --connection "Host=Uniquanda_DB;Port=5432;Database=uniquanda;Username=uniquanda;Password=uniquanda"
fi

dotnet watch run --urls="http://+:80;https://+:443" --project UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj
