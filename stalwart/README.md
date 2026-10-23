# Stalwart Mail Server

Stalwart provides SMTP, IMAP, and web-based mail administration in one server.

## Requirements

- Linux host with Docker Compose
- A domain you control for externally deliverable email
- A stable public IP and the ability to receive SMTP traffic for public mail

## Run

Copy `.env.example` to `.env` and replace the recovery administrator password with a unique, strong value. Then run:

```bash
docker compose pull
docker compose up -d
```

Use `http://<host>:8080` for initial setup, `https://<host>:8443` for the HTTPS service, and `http://<host>:8081` for HTTP. The alternate web ports avoid colliding with a host reverse proxy. Remove `STALWART_RECOVERY_ADMIN` from `.env` after creating a permanent administrator account.

For public mail, configure MX, SPF, DKIM, DMARC, and reverse DNS records. Residential ISPs commonly block inbound port 25. Never forward the mail ports to the internet until the server is configured and its mail security has been reviewed.
