@echo off
cd ..\nats-server\
start nats-server.exe
cd ..\RankCalculator\
SET DB_RUS=localhost:6000
SET DB_EU=localhost:6001
SET DB_OTHER=localhost:6002
start dotnet run
cd ..\EventsLogger\
start dotnet run
start dotnet run

cd ..\Valuator\
SET DB_RUS=localhost:6000
SET DB_EU=localhost:6001
SET DB_OTHER=localhost:6002
start dotnet run --urls "http://0.0.0.0:5001"
start dotnet run --urls "http://0.0.0.0:5002"

cd C:\Users\Misha\DP\DistributedProgramming\pa5\nginx
start nginx -c C:\Users\Misha\DP\DistributedProgramming\pa5\nginx\conf\nginx.conf