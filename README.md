# docker-compose

> Some examples used on ComputerZ Solutions...

## :factory: Requirements

* linux host (tested successfully on Ubuntu 20.04, Debian 10 & 11)
* docker >= 18.x
* docker-compose >= 1.26

## What you'll find

- [**FreeIPA**](<https://www.freeipa.org/page/Main_Page>) : <https://github.com/Mettmett/docker-compose/tree/master/freeipa>

- [**Portainer**](<https://www.portainer.io/>) : <https://github.com/Mettmett/docker-compose/tree/master/portainer>

- [**Ghost**](<https://ghost.org/>) : <https://github.com/Mettmett/docker-compose/tree/master/traefik-ghost-sql> for a website with Ghost and its SQL server [**MariaDB**](<https://mariadb.org/>) behind the marvelous reverse-proxy [**Traefik**](<https://containo.us/traefik/>)

- [**WordPress**](<https://wordpress.com/>) : <https://github.com/Mettmett/docker-compose/tree/master/traefik-nginx-wordpress-sql-redis> for a website with WordPress with its [**Redis**](<https://redis.io/>) cache object powered by [**Nginx**](<https://www.nginx.com/>) and [**PHP-FPM**](<https://www.php.net/manual/fr/install.fpm.php>), a SQL server [**MariaDB**](<https://mariadb.org/>) behind [**Traefik**](<https://containo.us/traefik/>)

- [**Nextcloud**](<https://nextcloud.com/>) : <https://github.com/Mettmett/docker-compose/tree/master/traefik-nginx-nextcloud-sql-redis> for a private cloud with its [**Redis**](<https://redis.io/>) cache object powered by [**Nginx**](<https://www.nginx.com/>) and [**PHP-FPM**](<https://www.php.net/manual/fr/install.fpm.php>), a SQL server [**MariaDB**](<https://mariadb.org/>) behind [**Traefik**](<https://containo.us/traefik/>)

- [**Matomo**](<https://fr.matomo.org/>) : <https://github.com/Mettmett/docker-compose/tree/master/traefik-nginx-matomo-sql> for a private analytics powered by [**Nginx**](<https://www.nginx.com/>) and [**PHP-FPM**](<https://www.php.net/manual/fr/install.fpm.php>), a SQL server [**MariaDB**](<https://mariadb.org/>) behind [**Traefik**](<https://containo.us/traefik/>)

- [**Grafana**](<https://grafana.com/>) and [**Prometheus**](<https://prometheus.io/>) : <https://github.com/Mettmett/docker-compose/tree/master/traefik-prometheus-grafana> for a monitoring stack behind [**Traefik**](<https://containo.us/traefik/>)

- [**PiHole**](<https://pi-hole.net/>) : <https://github.com/Mettmett/docker-compose/tree/master/traefik-pihole> for a DNS server with adblocker, with a configuration behind the reverse-proxy [**Traefik**](<https://containo.us/traefik/>)

- Misc repo with Traefik inside...

All scripts are "as it", and can be updated without consent.

## :rocket: How to use

Clone this repo where you want with this line :

```bash
git clone https://github.com/Mettmett/docker-compose.git:folder-name
```

You need to edit the file `.env` at the source folder to modify the values of some vars.

After that when you're all set, press the red button to initiate :fire: !

```bash
docker-compose pull; docker-compose up -d; docker-compose logs -f
```

## :star: Author

Made by Julien HOMMET :fr: for [ComputerZ Solutions](https://computerz.solutions/)

* Twitter: [@_ComputerZ](https://twitter.com/_ComputerZ)
* GitHub: [Mettmett](https://github.com/Mettmett)

## :wrench: Support & Contribution

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## :moneybag: Licence

[CC BY-NC-SA](https://creativecommons.org/licenses/by-nc-sa/4.0)

## :anchor: Misc
