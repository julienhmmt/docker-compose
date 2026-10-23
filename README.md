# docker compose stack examples, for Traefik

These are Compose examples used at home on my homelab. Many stacks are production-ready and in daily use. Most stack folders include a Traefik dynamic configuration and a restricted Docker socket proxy; hardware- and network-specific stacks may expose their services directly.

Configurations provided are tested on a private environment (QEMU and VirtualBox). Maybe in few months I'll test it on GCP, Azure or AWS (if there's free month subscription).

## :factory: Requirements

* linux host (tested successfully on Ubuntu 20.04 && 22.04 & 22.04, Debian 10 & 11)
* docker >= 23.x
* docker compose (plugin) >= 2.17

## What you'll find

Some usefull applications, used on homelab.

* [**FreeIPA**](<https://www.freeipa.org/page/Main_Page>) : <https://github.com/julienhmmt/docker-compose/tree/master/freeipa>

* [**Portainer**](<https://www.portainer.io/>) : <https://github.com/julienhmmt/docker-compose/tree/master/portainer>

* [**Ghost**](<https://ghost.org/>) : <https://github.com/julienhmmt/docker-compose/tree/master/traefik-ghost-sql> for a website with Ghost and its SQL server [**MariaDB**](<https://mariadb.org/>) behind the marvelous reverse-proxy [**Traefik**](<https://containo.us/traefik/>)

* [**Linkwarden**](<https://linkwarden.app/>) : <https://github.com/julienhmmt/docker-compose/tree/master/traefik-linkwarden> to store your links, a ne way for bookmarking and sharing links, with a PostgreSQL base, behind the marvelous reverse-proxy [**Traefik**](<https://containo.us/traefik/>)

* [**WordPress**](<https://wordpress.com/>) : <https://github.com/julienhmmt/docker-compose/tree/master/traefik-nginx-wordpress-sql-redis> for a website with WordPress with its [**Redis**](<https://redis.io/>) cache object powered by [**Nginx**](<https://www.nginx.com/>) and [**PHP-FPM**](<https://www.php.net/manual/fr/install.fpm.php>), a SQL server [**MariaDB**](<https://mariadb.org/>) behind [**Traefik**](<https://containo.us/traefik/>)

* [**Nextcloud**](<https://nextcloud.com/>) : <https://github.com/julienhmmt/docker-compose/tree/master/traefik-nginx-nextcloud-sql-redis> for a private cloud with its [**Redis**](<https://redis.io/>) cache object powered by [**Nginx**](<https://www.nginx.com/>) and [**PHP-FPM**](<https://www.php.net/manual/fr/install.fpm.php>), a SQL server [**MariaDB**](<https://mariadb.org/>) behind [**Traefik**](<https://containo.us/traefik/>)

* [**Matomo**](<https://fr.matomo.org/>) : <https://github.com/julienhmmt/docker-compose/tree/master/traefik-nginx-matomo-sql> for a private analytics powered by [**Nginx**](<https://www.nginx.com/>) and [**PHP-FPM**](<https://www.php.net/manual/fr/install.fpm.php>), a SQL server [**MariaDB**](<https://mariadb.org/>) behind [**Traefik**](<https://containo.us/traefik/>)

* [**Grafana**](<https://grafana.com/>) and [**Prometheus**](<https://prometheus.io/>) : <https://github.com/julienhmmt/docker-compose/tree/master/traefik-prometheus-grafana> for a monitoring stack behind [**Traefik**](<https://containo.us/traefik/>)

* [**PiHole**](<https://pi-hole.net/>) : <https://github.com/julienhmmt/docker-compose/tree/master/traefik-pihole> for a DNS server with adblocker, with a configuration behind the reverse-proxy [**Traefik**](<https://containo.us/traefik/>)

* [**AdGuard Home**](<https://adguard.com/adguard-home/overview.html>) : [standalone Compose stack](./adguard-home) for network-wide DNS filtering

* [**Stalwart**](<https://stalw.art/>) : [standalone Compose stack](./stalwart) for self-hosted email and collaboration

* [**Home Assistant**](<https://www.home-assistant.io/>) : [Home Assistant, Mosquitto, and Zigbee2MQTT stack](./home-assistant-mqtt-zigbee2mqtt) for home automation

* [**Paperless-ngx**](<https://docs.paperless-ngx.com/>) : [standalone Compose stack](./paperless-ngx) for searchable document archiving

* [**Restic**, **Backrest**, and **Garage**](<https://restic.net/>) : [backup stack](./restic-garage) with a web UI and S3-compatible storage

* [**Uptime Kuma**](<https://uptime.kuma.pet/>) and [**ntfy**](<https://ntfy.sh/>) : [monitoring and notifications stack](./uptime-kuma-ntfy)

* Misc repo with Traefik inside...

All scripts are "as it", and can be updated without consent.

## :rocket: How to use

Stacks target **fresh installs** on the versions pinned in each compose file. Major versions (databases included) are bumped without a data migration path: start from empty volumes (`docker compose down -v` deletes the old ones), or migrate your data yourself.

Clone this repo where you want with this line :

```bash
# git clone https://github.com/julienhmmt/docker-compose.git:folder-name
e.q. : git clone https://github.com/julienhmmt/docker-compose.git:traefik-ghost-sql
```

You need to edit the file `.env` at the source folder to modify the values of some vars.

After that when you're all set, press the red button to initiate :fire: !

```bash
docker compose pull && docker compose up -d && docker compose logs -f
```

## :star: Author

Made by Julien HOMMET :fr: for [my personal purposes](https://j.hommet.net/) - This is my homelab

* GitHub: [julienhmmt](https://github.com/julienhmmt)

## :wrench: Support & Contribution

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## :moneybag: Licence

[CC BY-SA](https://creativecommons.org/licenses/by-sa/4.0)

## :anchor: Misc
