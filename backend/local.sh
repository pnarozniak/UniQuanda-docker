#!/bin/bash
dotnet user-secrets init --project ./../app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj
    dotnet user-secrets set "AWS:Region" "eu-central-1" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
if [ $1 -eq 1 ]
then
    dotnet user-secrets set "AWS:AccessKeyId" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
    dotnet user-secrets set "AWS:SecretAccessKey" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
    dotnet-ef database update --project ./../app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj --context AuthDbContext --connection "Host=Uniquanda_Authorization_Database;Port=5432;Database=uniquanda;Username=uniquanda;Password=uniquanda"
    dotnet-ef database update --project ./../app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj --context AppDbContext --connection "Host=Uniquanda_DB;Port=5432;Database=uniquanda;Username=uniquanda;Password=uniquanda"
else
    dotnet user-secrets set "AWS:AccessKeyId" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
    dotnet user-secrets set "AWS:SecretAccessKey" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
fi

dotnet watch run --urls="http://+:80;https://+:443" --project UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj
