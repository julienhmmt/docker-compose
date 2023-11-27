# docker-compose Traefik & Linkwarden
  
LinkWarden is a tool used for managing and organizing links. It allows users to save, organize, and share links, which can be particularly useful for bookmarking web pages, organizing resources, or sharing curated lists of links with others. With LinkWarden, you can categorize your links, add descriptions, and access them from different devices. It's a handy tool for keeping your online resources organized and easily accessible. This stack provide Linkwarden behind Traefik. More information about Linkwarden at the [official website](https://linkwarden.app)

## :factory: Requirements

* linux host (tested successfully on Ubuntu 22.04, Debian 11 & 12)
* docker (+compose) >= 23.x

## :rocket: How to use

Clone this repo where you want with this line :

```bash
git clone https://github.com/Mettmett/docker-compose.git:traefik-linkwarden
```

Don't forget to change `NEXTAUTH_SECRET`, `NEXTAUTH_URL` vars of the `linkwarden.env` file. PGSQL password is in the `.secrets` folder, change it and update the var `DATABASE_URL` of the `linkwarden.env` file.

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
