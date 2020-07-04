# docker-compose Traefik & Matomo

Just a docker-compose with Traefik, Nginx, Matomo and SQL server...

Use either the .yml config files for Traefik or the .toml, as you want (but not both at the same time !)

**Important !!**
You have to "sudo chmod 600" the file "acme.json", otherwise you won't be able to pull Let's Encrypt certificates.
