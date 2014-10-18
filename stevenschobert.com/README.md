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

```sh
cp server.crt ./ansible/files/server.crt
cp server.key ./ansible/files/server.key
```

Copy the SSH keys to the `ansible/files` folder:

```sh
cp id_rsa ./ansible/files/id_rsa
cp id_rsa.pub ./ansible/files/id_rsa.pub
```

Copy the `npmrc` sample file and fill in with private registry URL

```sh
cp ./ansible/files/npmrc.sample ./ansible/files/npmrc
```

Setup any deployment variables by copying the `ansible/variables.yml.sample` file:

```sh
cp ./ansible/variables.yml.sample ./ansible/variables.yml
```

## Tasks

The following `make` tasks are available:

- **make servers** - Creates/updateas the cloud servers on DigitalOcean.
- **make provision** - Provisions the servers with required software for deployment.
- **make configure** - Configures the servers for deployment.
- **make deploy** - Deploys and starts the applications.
