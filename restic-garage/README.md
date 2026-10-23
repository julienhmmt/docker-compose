# Restic backups with Backrest and Garage

Backrest provides a web UI for Restic. Garage supplies an S3-compatible bucket on the same Compose network.

## Requirements

- Linux host with Docker Compose
- OpenSSL for generating unique Garage credentials

## Run

Create `.env` with unique values:

```bash
cat > .env <<EOF
GARAGE_RPC_SECRET=$(openssl rand -hex 32)
GARAGE_ADMIN_TOKEN=$(openssl rand -hex 32)
GARAGE_METRICS_TOKEN=$(openssl rand -hex 32)
GARAGE_DEFAULT_ACCESS_KEY=GK$(openssl rand -hex 16)
GARAGE_DEFAULT_SECRET_KEY=$(openssl rand -hex 32)
EOF
```

Place the data to back up in `backup-source/`, then run:

```bash
docker compose pull
docker compose up -d
```

Open `http://<host>:9898`. In Backrest, create a Restic repository using the S3 endpoint `http://garage:3900`, bucket `restic`, region `garage`, and the access key and secret from `.env`. Set a Restic repository password in Backrest and configure backup plans for `/userdata`. Keep the Backrest UI on a trusted LAN or behind HTTPS; do not forward its HTTP port directly to the internet.

This example uses a single Garage node and is not redundant. Garage and the source data are on the same host, so this is not protection against host or disk failure; keep another encrypted backup copy on separate hardware or off-site.
