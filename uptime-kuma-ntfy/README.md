# Uptime Kuma and ntfy

Uptime Kuma monitors services and sends alerts through a private ntfy server. Uptime Kuma is available on port 3002; ntfy is available on port 8088.

## Run

Copy `.env.example` to `.env`, set `NTFY_BASE_URL` to the LAN address or hostname clients will use, and start the stack:

```bash
docker compose pull
docker compose up -d
```

Create an ntfy administrator and a restricted publishing user:

```bash
docker compose exec ntfy ntfy user add --role=admin admin
docker compose exec ntfy ntfy user add kuma
docker compose exec ntfy ntfy access kuma alerts write-only
```

Set passwords when prompted. In Uptime Kuma, add an ntfy notification with server URL `http://ntfy:80`, topic `alerts`, and the `kuma` username and password. Subscribe to the same server and topic from your ntfy clients.

The ntfy server denies anonymous access by default. Keep both web interfaces on a trusted LAN or behind HTTPS; do not forward their HTTP ports directly to the internet.
