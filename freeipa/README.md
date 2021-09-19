# docker-compose FreeIPA

> Docker stack to have a FreeIPA server without DNS. This stack is a "simple" LDAP server for testing purpose only. Not a production ready !

## :factory: Requirements

* linux host (tested successfully on Ubuntu 20.04, Debian 10 & 11)
* docker >= 18.x
* docker-compose >= 1.26

## :rocket: How to use

Clone this repository :

```bash
git clone https://github.com/Mettmett/docker-compose.git:freeipa
```

You need to edit the file `.env` at the source folder to modify the values of some vars. After that when you're all set, press the red button to initiate :fire: !

```bash
docker-compose pull; docker-compose up -d; docker-compose logs -f
```

## :star: Author

Made by Julien HOMMET :fr: at [ComputerZ Solutions](https://computerz.solutions/)

* Twitter: [@_ComputerZ](https://twitter.com/_ComputerZ)
* GitHub: [Mettmett](https://github.com/Mettmett)

## :wrench: Support & Contribution

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## :moneybag: Licence

[CC BY-NC-SA](https://creativecommons.org/licenses/by-nc-sa/4.0)

## :anchor: Misc

More infos at [https://computerz.solutions/docker-compose-freeipa/](https://computerz.solutions/docker-compose-freeipa/)
