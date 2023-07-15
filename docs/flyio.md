# Deployment with Fly.io

The application is deployable on [Fly.io](https://fly.io)
with instructions [on running with Elixir](https://fly.io/docs/getting-started/elixir/)

## Install flyctl

To install locally

```bash
# Install flyctl on OSX
brew install flyctl

# Login to Fly
flyctl auth login
> Email: aforward@hey.com
> Password: **************
```

## Launch Application (only once)

We setup the application using the `launch` command.

```bash
flyctl launch
```

With the following settings

```
name: a4word
org: a4word
region: yyz
```

This will configure a [Postgres DB](https://fly.io/docs/reference/postgres/).

You will be given information like

```
Username:    postgres
Password:    ----- stored in 1Password ----
Hostname:    a4word-db.internal
Proxy port:  5432
Postgres port:  5433
```

As well as connectivity strings like

```
postgres://postgres:PSQL_PASSWORD@anunknown-db.internal:5432
```

And a secret `DATABASE_URL` was added to your account.

## Manage DNS

```bash
fly ips list
```

## Create SSL Certs (once only)

You can create an SSL cert with the following
[based on fly.io documentation for custom domains](https://fly.io/docs/app-guides/custom-domains-with-fly/)

```bash
fly certs create anunknown.dev
```

Make sure that you also update [fly.toml](/fly.toml) with the correct `PHX_HOST`


## Manage Secrets

The following [secrets are managed by fly.io](https://fly.io/docs/reference/secrets/)

| Name | Sample Value | Description
| --- | --- | --- |
| SECRET_KEY_BASE | djk6Xx1TvjxHB9zaOjMXCVczFdXC800IpZkEZkkd9aLCAnJiN4SwLt5YeSZr8Wks | Used [internally by Phoenix](https://hexdocs.pm/phoenix/Phoenix.Endpoint.html#module-endpoint-configuration)
| DATABASE_URL | DATABASE_URL=postgres://a4word:PSQL_PASSWORD@a4word-db.flycast:5432/a4word?sslmode=disable | The secret is the `PSQL_PASSWORD` value stored in 1Password |



To see these secrets run

```
flyctl secrets list
```

To add a new secret run

```
flyctl secrets set GITHUB_TOKEN=ghp_ABCdef123HIJ456u4QkCenMK6sW2bYTFv
```


## Deploy Application

After making changes you can deploy an updated version with.

```bash
flyctl deploy
```

## View Running Application

```bash
fly open
```

## Debugging Production

You can [access the production iex shell](https://fly.io/docs/getting-started/elixir/#iex-shell-into-your-running-app).

```bash
# connect to the remote console
fly ssh console
```

And then attached to the running app

```bash
app/bin/blog remote
```

## References

* [Fly.io Pricing](https://fly.io/docs/about/pricing/#virtual-machines)