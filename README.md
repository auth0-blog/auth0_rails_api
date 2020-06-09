# README

This repository accompanies the Auth0 blog post on [building secure APIs with Rails 6 and Auth0](https://www.auth0.com/blog/building-secure-apis-with-rails-6-and-auth0).

## Setup

Before running the app, you first need to generate a credentials file with an Auth0 API identifier and your Auth0 domain. See the above linked blog post if you need further clarification.

```bash
$ bundle install
$ bundle exec rails credentials:edit --environment development
```

Add the following to the credentials file, replacing `{API_IDENTIFIER}` and `{AUTH0_DOMAIN}` with your own values:

```yaml
auth0:
  api_identifier: {API_IDENTIFIER}
  domain: {AUTH0_DOMAIN}
```

## Run

```bash
$ bundle exec rails server
```