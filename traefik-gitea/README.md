# docker-compose Traefik + Gitea

Gitea a simple self-hosted and ready-to-use git server with CI/CD. Simpler and lighter than GitLab, it's a must have in your homelab ! More information at [the official website](https://docs.gitea.com/). This stack will spawn a PostgreSQL database server, with Gitea "rootless". There is an exporter for the postgresql database server (prometheus metrics).

## :factory: Requirements

* linux host (tested successfully on Ubuntu 22.04 & Debian 12)
* docker (+compose) >= 23.x

## :rocket: How to use

Clone this repo where you want with this line :

```bash
git clone https://github.com/Mettmett/docker-compose.git:traefik-gitea
```

You need to edit files in the folder `.secrets` with your own values.

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
