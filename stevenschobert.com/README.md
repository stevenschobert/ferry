# [stevenschobert.com](http://stevenschobert.com)

## Setup

First get an API key from [DigitalOcean](https://www.digitalocean.com/?refcode=6dbd403853bf).
You'll need it later.

### Required Files

Add your DigitalOcean API key to a Terraform env file:

```sh
cp terraform/terraform.tfvars.sample terraform/terraform.tfvars
```

Copy the SSL server keys to the `ansible/files` folder:

```
cp server.crt ./ansible/files/server.crt
cp server.key ./ansible/files/server.key
```

## Tasks

The following `make` tasks are available:

- **make servers** - Provisions the cloud servers from DigitalOcean.
- **make deploy** - Installs any required software and deploys the application to the servers.