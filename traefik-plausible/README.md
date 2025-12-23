# docker-compose Traefik & Plausible

Plausible is an analytics tools for your website, with a lightweight script, GPDR compliant and simple. It is less complicated than Matomo, but there is less functionnality. To have more informations at [plausible website](https://plausible.io/simple-web-analytics).  

## :factory: Requirements

* linux host (tested successfully on Ubuntu 22.04, 24.04, Debian 12 and 13)
* docker >= 28.2.x
* docker compose (plugin) >= 2.37.x

## :rocket: How to use

Clone this repo where you want with this line :

```bash
git clone https://github.com/julienhmmt/docker-compose.git:traefik-plausible
```

You need to edit files `plausible-conf.env` and `.env` at the source folder to modify the values of some vars.

After that when you're all set, press the red button to initiate :fire: !

```bash
docker compose pull && docker compose up -d && docker compose logs -f
```

## :star: Author

Made by Julien HOMMET :fr: for [my personnal website](https://j.hommet.net)

* GitHub: [julienhmmt](https://github.com/julienhmmt)

## :wrench: Support & Contribution

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## :moneybag: Licence

[CC BY-SA](https://creativecommons.org/licenses/by-sa/4.0)

## :anchor: Misc
