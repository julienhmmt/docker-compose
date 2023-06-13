# docker-compose Traefik & Vaultwarden
  
Vaultwarden is a fork of Bitwarden, written in Rust. It has the same functionnalities but free :). This stack let you have your own instance of Vaultwarden, behind Traefik. More information about Vaultwarden at the [official GitHub Repository](https://github.com/dani-garcia/vaultwarden)

## :factory: Requirements

* linux host (tested successfully on Ubuntu 20.04 && 22.04, Debian 10 & 11)
* docker >= 23.x
* docker compose (plugin) >= 2.17.x

## :rocket: How to use

Clone this repo where you want with this line :

```bash
git clone https://github.com/Mettmett/docker-compose.git:traefik-vaultwarden
```

Don't forget to change "SMTP_" vars, or comment them if you don't need it. The variable "DOMAIN" needs to be change too

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
