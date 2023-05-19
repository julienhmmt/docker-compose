# docker-compose Traefik SSL wildcard

> Obtain SSL wildcard cert with Traefik and Let's Encrypt, provided by CloudFlare.

You'll need an account on CloudFlare before launch this stack. To recover the need keys, connect to the [CloudFlare portail](https://dash.cloudflare.com/), select the domain and go th [API Tokens](https://dash.cloudflare.com/profile/api-tokens).

* Create a API token, select "Modify DNS zone" and give it "zone.DNS" authorization. This token need to be on the var `CF_DNS_API_TOKEN`.
* Create a new API token, select "Modify DNS zone" and give ti "Zone.Zone" authorization. This token need to be on the var `CF_ZONE_API_TOKEN`.
* "Global API Key" can be recover on this same page, click on button "show" (password of your CloudFlare required). This token need to be on the var `CF_API_KEY`.

## :factory: Requirements

* linux host (tested successfully on Ubuntu 20.04, Debian 10 & 11)
* docker >= 18.x
* docker-compose >= 1.26

## :rocket: How to use

Clone this repo where you want with this line :

```bash
git clone https://github.com/Mettmett/docker-compose.git:traefik-cloudflare
```

You need to edit the file `.env` at the source folder to modify the values of some vars. After that when you're all set, press the red button to initiate :fire: !

```bash
docker-compose pull; docker-compose up -d; docker-compose logs -f
```

## :star: Author

Made by Julien HOMMET :fr: for [my personnal website](https://j.hommet.net)

* Twitter: [@_ComputerZ](https://twitter.com/_ComputerZ)
* GitHub: [Mettmett](https://github.com/Mettmett)

## :wrench: Support & Contribution

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## :moneybag: Licence

[CC BY-NC-SA](https://creativecommons.org/licenses/by-nc-sa/4.0)

## :anchor: Misc
