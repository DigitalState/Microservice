# Docker

The DigitalState Abstract Microservice docker information.

## Table of Contents

- [Environment Variables](#environment-variables)

## Environment Variables

The following section describes the complete list of environment variables for the docker-compose file and each container images.

### Docker Compose

The environment variables used by the docker-compose files.

_Note: The majority of variables found in the list below are used to override image-level environment variables._

| Name | Description | Default |
| :--- | :---------- | :------ |
| `COMPOSE_CONVERT_WINDOWS_PATHS` | The docker-compose windows path compatibility config. | `true` |
| `COMPOSE_PROJECT_NAME` | The docker-compose project name. This is used to properly namespace docker containers in the event where you are running multiple instances. | `ds_microservice` |
| `DIRECTORY` | The base directory the docker-compose files are located. This is used to properly configure the base directory for DockerForWindows and DockerForMac based machines. | `.` |
| `DATABASE_NAME` | The database name. | `api` |
| `DATABASE_USER` | The database user. | `api` |
| `DATABASE_PASSWORD` | The database password. | `!ChangeMe!` |
| `DATABASE_URL` | The database connection string used by the api image. | `postgres://api:!ChangeMe!@database/api` |

### Database Image

| Name | Description | Default |
| :--- | :---------- | :------ |
| `POSTGRES_DB` | The database name. | `api` |
| `POSTGRES_USER` | The database user. | `api` |
| `POSTGRES_PASSWORD` | The database password. | `!ChangeMe!` |

### Api Image

| Name | Description | Default |
| :--- | :---------- | :------ |
| `APP` | The microservice app name. This value is used to tag various resources, such as log records, to properly identify such resources in a microservice architecture.  | `microservice` |
| `APP_ENV` | The app runtime environment.  | `dev` |
| `APP_SECRET` | The app secret. See [Symfony reference](https://symfony.com/doc/current/reference/configuration/framework.html#secret) | `!ChangeMe!` |
| `APP_NAMESPACE` | The app namespace. This value is used by various core components to help namespace multiple instances. | `ds` |
| `TRUSTED_PROXIES` | The trusted proxies by the web entrypoint. | `10.0.0.0/8,172.16.0.0/12,192.168.0.0/16` |
| `TRUSTED_HOSTS` | The trusted hosts by the web entrypoint. | `localhost,api` |
| `DATABASE_URL` | The database connection string. | `postgres://api:!ChangeMe!@database/api` |
| `CORS_ALLOW_ORIGIN` | The cors rules. | `^https?://localhost(:[0-9]+)?$` |
| `DISCOVERY_HOST` | The discovery host. This value is used by the discovery core component. | `127.0.0.1:8500` |
| `DISCOVERY_CREDENTIAL` | The discovery credential. This value is used by the discovery core component. | `!ChangeMe!` |
| `ENCRYPTION` | The secret encryption key. | `!ChangeMe!` |
| `SYSTEM_USERNAME` | The system username. | `!ChangeMe!` |
| `SYSTEM_PASSWORD` | The system password. | `!ChangeMe!` |
