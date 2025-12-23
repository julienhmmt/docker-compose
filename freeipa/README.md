# docker-compose FreeIPA

> Docker stack to have a FreeIPA server without DNS. This stack is a "simple" LDAP server for testing purpose only. Not a production ready !

## :factory: Requirements

* linux host (tested successfully on Ubuntu 22.04, 24.04, Debian 11, 12 and 13)
* docker >= 28.2.x
* docker compose (plugin) >= 2.37.x

## :rocket: How to use

Clone this repository :

```bash
git clone https://github.com/Mettmett/docker-compose.git:freeipa
```

You need to edit the file `.env` at the source folder to modify the values of some vars, including `FREEIPA_VERSION` if you want to pin to a different image tag. After that when you're all set, press the red button to initiate :fire: !

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

[CC BY-SA](https://creativecommons.org/licenses/by-sa/4.0)

## :anchor: Misc
