# Use the official .NET 9 SDK image as the base image
FROM mcr.microsoft.com/dotnet/nightly/sdk:latest AS build-env

# Set the working directory
WORKDIR /app

COPY . .
RUN dotnet restore
RUN dotnet publish -o /app/published-app

# Use the official .NET 9 runtime image as the base image for the runtime stage
FROM mcr.microsoft.com/dotnet/nightly/aspnet:latest 

# Set the working directory
WORKDIR /app

# Copy the build output from the build stage
COPY --from=build-env /app/published-app /app

# Set the entry point of the application
ENTRYPOINT ["dotnet", "/app/blinky-billing.dll"]