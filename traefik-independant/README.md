# docker-compose Traefik "independant"

> POC of a Traefik without labels, only a full dynamic configuration and in another folder !

It's easy to manage for all your containers and no need to refresh/reload your compose file. You just have to save the dynamic conf file and it's done.

This stack is a multipurpose environment : you'll have a specific stack for Traefik and Prometheus in a folder, and another stack (wordpress) in another folder.

## :factory: Requirements

* linux host (tested successfully on Ubuntu 18.04 & 20.04, Debian 9 & 10)
* docker >= 18.x

## :rocket: How to use

Clone this repo where you want with this line :

```bash
git clone https://github.com/Mettmett/docker-compose.git:traefik-independant
```

You need to edit the file `.env` at the source folder to modify the values of some vars.

Don't forget to create some networks before create your containers.

```bash
docker network create --subnet 172.16.1.0/24 --driver bridge oueb

docker network create --subnet 192.168.10.0/24 backend
```

After that when you're all set, press the red button to initiate :fire: !

```bash
cd dc && docker-compose pull && docker-compose up -d && docker-compose logs -f

cd ../blog && docker-compose pull && docker-compose up -d && docker-compose logs -f
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
