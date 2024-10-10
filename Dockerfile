# builds our image using dotnet's sdk
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /source
COPY . ./webapp/
WORKDIR /source/webapp
RUN dotnet restore
RUN dotnet publish -c release -o /app --no-restore

# runs it using aspnet runtime
FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=build /app ./
ENTRYPOINT ["dotnet", "webapp.dll"]
