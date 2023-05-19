# docker-compose Traefik & PiHole v5

> Docker stack to have a PiHole v5 behind a Traefik reverse-proxy.

## :factory: Requirements

* linux host (tested successfully on Ubuntu 20.04 && 22.04, Debian 10 & 11)
* docker >= 23.x
* docker compose (plugin) >= 2.17.x

## :rocket: How to use

Clone this repo where you want with this line :

```bash
git clone https://github.com/Mettmett/docker-compose.git:traefik-pihole
```

You need to edit the file `.env` at the source folder to modify the values of some vars.

After that when you're all set, press the red button to initiate :fire: !

```bash
docker compose pull && docker compose up -d && docker compose logs -f
```

## :star: Author

Made by Julien HOMMET :fr: for [my personnal website](https://j.hommet.net)

* Twitter: [@mettmettz](https://twitter.com/mettmettz)
* GitHub: [Mettmett](https://github.com/Mettmett)

## :wrench: Support & Contribution

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## :moneybag: Licence

[CC BY-NC-SA](https://creativecommons.org/licenses/by-nc-sa/4.0)

## :anchor: Misc

More infos at [https://computerz.solutions/docker-compose-traefik-et-pihole/](https://computerz.solutions/docker-compose-traefik-et-pihole/)
