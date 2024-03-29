#!/bin/bash
dotnet user-secrets init --project ./../app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj
dotnet user-secrets set "Tokens:AccessToken:SecretKey" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "Tokens:AccessToken:ValidIssuer" "https://dev.uniquanda.pl" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "Tokens:AccessToken:ValidAudience" "https://dev.uniquanda.pl" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "CORS:Url" "https://dev.uniquanda.pl" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "DbConnection:AuthDb:Password" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "DbConnection:AppDb:Password" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "Email:SendGrid:ApiKey" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "Email:SendGrid:SenderEmail" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "RedisConnection:Password" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "AWS:Region" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "Image:EndpointUrl" "https://dev.uniquanda.pl:{TU_WSTAW_WARTOŚĆ_Z_ENV_BACKEND_HTTPS_PORT}/api/Image/" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "UniQuandaClient:Url" "https://dev.uniquanda.pl" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "Recaptcha:SecretKey" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "OAuth:Google:ClientSecret" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "OAuth:Google:RedirectUri" "https://dev.uniquanda.pl:{TU_WSTAW_WARTOŚĆ_Z_ENV_BACKEND_HTTPS_PORT}/api/Auth/login-by-google" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "PayU:OAuth:ClientId" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "PayU:OAuth:ClientSecret" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "PayU:OrderCreateRequest:MerchantPosId" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "PayU:OrderCreateRequest:ContinueUrl" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"

if [ $1 -eq 1 ]
then
    dotnet user-secrets set "AWS:AccessKeyId" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
    dotnet user-secrets set "AWS:SecretAccessKey" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
    dotnet-ef database update --project ./../app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj --context AuthDbContext --connection "Host=Uniquanda_Authorization_Database;Port=5432;Database=uniquanda;Username=xyz;Password=xyz"
    dotnet-ef database update --project ./../app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj --context AppDbContext --connection "Host=Uniquanda_DB;Port=5432;Database=uniquanda;Username=xyz;Password=xyz"
else
    dotnet user-secrets set "AWS:AccessKeyId" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
    dotnet user-secrets set "AWS:SecretAccessKey" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
fi

dotnet run --urls="http://+:80;https://+:443" --project ./../app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj
