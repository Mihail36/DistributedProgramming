@echo off
cd ..\nats-server\
start nats-server.exe
cd ..\RankCalculator\
start dotnet run
cd ..\EventsLogger\
start dotnet run
start dotnet run

cd ..\Valuator\
start dotnet run --urls "http://0.0.0.0:5001"
start dotnet run --urls "http://0.0.0.0:5002"

cd C:\Users\Misha\DP\DistributedProgramming\pa4\nginx
start nginx -c C:\Users\Misha\DP\DistributedProgramming\pa4\nginx\conf\nginx.conf