# docker-compose Traefik & Wordpress

Docker stack to have a WordPress site behind a Traefik reverse-proxy with Nginx, a SQL database and Redis objects cache.
More infos at <https://computerz.solutions/docker-compose-wordpress-nginx-et-traefik/>

Use either the .yml config files for Traefik or the .toml, as you want (but not both at the same time !)

**Important !!**
You have to "sudo chmod 600" the file "acme.json", otherwise you won't be able to pull Let's Encrypt certificates.
