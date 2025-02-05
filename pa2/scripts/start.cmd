@echo off
cd ..\Valuator\
start dotnet run --urls "http://0.0.0.0:5001"
start dotnet run --urls "http://0.0.0.0:5002"

cd C:\Users\Misha\DP\DistributedProgramming\pa2\nginx
start nginx -c C:\Users\Misha\DP\DistributedProgramming\pa2\nginx\conf\nginx.conf