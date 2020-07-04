# docker-compose Traefik & Ghost

Just a docker-compose with Traefik, CMS Ghost and SQL server... You're not forced to use Traefik.
More info at <https://computerz.solutions/docker-ghost-traefik-tls/>.

Use either the .yml config files for Traefik or the .toml, as you want (but not both at the same time !)

**Important !!**
You have to "sudo chmod 600" the file "acme.json", otherwise you won't be able to pull Let's Encrypt certificates.
