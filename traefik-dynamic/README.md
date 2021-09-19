# docker-compose Traefik "dynamic"

> POC of a Traefik without labels, only a full dynamic configuration !

It's easy to manage for all your containers and no need to refresh/reload your compose file. You just have to save the dynamic conf file and it's done.

## :factory: Requirements

* linux host (tested successfully on Ubuntu 20.04, Debian 10 & 11)
* docker >= 18.x
* docker-compose >= 1.26

## :rocket: How to use

Clone this repo where you want with this line :

```bash
git clone https://github.com/Mettmett/docker-compose.git:traefik-dynamic
```

You need to edit the file `.env` at the source folder to modify the values of some vars.

After that when you're all set, press the red button to initiate :fire: !

```bash
docker-compose pull && docker-compose up -d && docker-compose logs -f
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
