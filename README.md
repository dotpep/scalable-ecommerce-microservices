# Core Shop Service (Scalable E-Commerce Microservices)

One Paragraph of project description goes here

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

## Notes

### Docker

- `docker exec -it core-shop-service-psql_bp-1 bash`

### Powershell

- `netstat` for checking networks and what port they are using
- `ps` is alias for `Get-Process` for checking process that is running or just Task Manager

---

How to find web/api-server that is running on specific `port`? and also stop this process.

PORT=8080
PID=16064

1. `netstat -ano | findstr <PORT>` for finding the Process ID (PID)
2. `Get-Process -Id <PID>` for verifying the Process is running
3. `Stop-Process -Id <PID> -Force` for terminating the Process

Full Example:

```powershell
# Find the process ID (PID) on port 8080
$pid = (netstat -ano | findstr :8080 | ForEach-Object { $_ -split '\s+' })[-1]

# Verify the process (optional step)
Get-Process -Id $pid

# Kill the process
Stop-Process -Id $pid -Force
```

### Problems

Problems that can occur:

- port conflict of your LocalMachine Postgres with Docker Postgres (you need to modify: `BLUEPRINT_DB_PORT=5433` in `.env` - `psql_bp: ports: - "${BLUEPRINT_DB_PORT}:5432"` of `docker-compose.yml`)

## MakeFile

Run build make command with tests
```bash
make all
```

Build the application
```bash
make build
```

Run the application
```bash
make run
```
Create DB container
```bash
make docker-run
```
Show Logs
```bash
make docker-logs
```

Shutdown DB Container
```bash
make docker-down
```

DB Integrations Test:
```bash
make itest
```

Live reload the application:
```bash
make watch
```

Run the test suite:
```bash
make test
```

Clean up binary from the last build:
```bash
make clean
```
#