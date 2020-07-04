# docker-compose Traefik & Nextcloud

Docker stack to have a private Nextcloud behind a Traefik reverse-proxy with Nginx, a SQL database and Redis objects cache.
More infos at <https://computerz.solutions/docker-compose-traefik-nextcloud/>

Use either the .yml config files for Traefik or the .toml, as you want (but not both at the same time !)

**Important !!**
You have to "sudo chmod 600" the file "acme.json", otherwise you won't be able to pull Let's Encrypt certificates.
