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
dotnet user-secrets set "AWS:AccessKeyId" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "AWS:SecretAccessKey" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "AWS:Region" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "Image:EndpointUrl" "https://dev.uniquanda.pl:{TU_WSTAW_WARTOŚĆ_Z_ENV_BACKEND_HTTPS_PORT}/api/Image/" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "UniQuandaClient:Url" "https://dev.uniquanda.pl" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "Recaptcha:SecretKey" "xyz" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"
dotnet user-secrets set "Recaptcha:VerificationApiUrl" "https://www.google.com/recaptcha/api/siteverify" --project "/app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj"

dotnet-ef database update --project ./../app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj --context AuthDbContext --connection "Host=Uniquanda_Authorization_Database;Port=5432;Database=uniquanda;Username=xyz;Password=xyz"
dotnet-ef database update --project ./../app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj --context AppDbContext --connection "Host=Uniquanda_DB;Port=5432;Database=uniquanda;Username=xyz;Password=xyz"
dotnet run --urls="http://+:80;https://+:443" --project ./../app/UniQuanda.Presentation.API/UniQuanda.Presentation.API.csproj