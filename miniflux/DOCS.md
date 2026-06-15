# Home Assistant Add-on: Miniflux

Miniflux is a minimalist and opinionated feed reader.

## Installation

1. Add this repository to your Home Assistant add-on store.
2. Install the **Miniflux** add-on.
3. Create a `miniflux` database and user in your PostgreSQL add-on.
4. Configure the add-on with your database credentials.
5. Start the add-on.

## Configuration

| Option | Description |
|--------|-------------|
| `DATABASE_HOST` | Hostname of your PostgreSQL add-on (e.g. `77e2a68a-timescaledb`) |
| `DATABASE_PORT` | PostgreSQL port (default `5432`) |
| `DATABASE_USER` | Database user |
| `DATABASE_PASSWORD` | Database password |
| `DATABASE_NAME` | Database name |
| `DATABASE_SSLMODE` | SSL mode (`disable`, `require`, `verify-ca`, `verify-full`) |
| `RUN_MIGRATIONS` | Run database migrations on startup |
| `CREATE_ADMIN` | Create an admin user on first run |
| `ADMIN_USERNAME` | Admin username |
| `ADMIN_PASSWORD` | Admin password |

## Support

For Miniflux documentation, visit [miniflux.app](https://miniflux.app).
