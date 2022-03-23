FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build-env
ENV DOTNET_USE_POLLING_FILE_WATCHER 1
WORKDIR /app
COPY *.crt /app/
RUN dotnet dev-certs https -ep /app/cert.crt
RUN dotnet dev-certs https --trust
ENTRYPOINT dotnet watch run --urls="http://+:80;https://+:443" -p backend.csproj