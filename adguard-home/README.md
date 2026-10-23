# AdGuard Home

AdGuard Home provides LAN-wide DNS filtering. It uses host networking so DNS queries retain their client addresses.

## Requirements

- Linux host with Docker Compose
- Linux host with ports 53 and the chosen web interface port available

## Run

```bash
docker compose pull
docker compose up -d
```

Open `http://<host>:3000` for the initial setup and choose an available web interface port, such as 3001. Use that port to open the web interface after setup.

Do not run this alongside another DNS service bound to port 53. Do not forward DNS ports from the public internet. Configure your router or DHCP server to use this host as the LAN DNS resolver.
