FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS runtime
WORKDIR /App

# Copy published output from GitHub Actions into container
COPY ./output ./

ENTRYPOINT ["dotnet", "App.dll"]
