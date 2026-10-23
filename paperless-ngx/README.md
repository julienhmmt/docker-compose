# Paperless-ngx

Paperless-ngx stores searchable document archives using PostgreSQL and Valkey.

## Requirements

- Linux host with Docker Compose
- A long random application secret and unique database and administrator passwords

## Run

Copy `.env.example` to `.env`, fill in all empty values, and set `PAPERLESS_URL` to the address users will open. Then run:

```bash
docker compose pull
docker compose up -d
```

Open the configured URL. Put documents to import in `consume/`; exports are written to `export/`. Back up the database and media together before upgrades or migrations. Keep the web interface on a trusted LAN or behind HTTPS; do not forward its HTTP port directly to the internet.
