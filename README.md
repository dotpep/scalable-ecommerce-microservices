# Core Shop Service (Scalable E-Commerce Microservices)

One Paragraph of project description goes here

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

## Notes

- `docker exec -it core-shop-service-psql_bp-1 bash`

---

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