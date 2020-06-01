# Deploy Keycloak to Heroku

This repository deploys the [Keycloak](https://www.keycloak.org)
Identity and Access Manangement Solution to Heroku.  It is based of
Keycloak's official docker image with some slight modifications to use
the Heroku variable for `PORT` and `DATABASE_URL` properly.

## Differences from upstream

> The deployment will be made with a single Performance-M dyno (it
> won't run very well in smaller dynos due to Java's memory hunger)
> with a free Postgres database attached.

This fork sets you up with a default free dyno; it likely won't be
enough to properly run keycloak, but you can scale things up based on
your needs after some testing.

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)
