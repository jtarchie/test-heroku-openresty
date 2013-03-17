# Introduction

I was looking for a way to test my application against Heroku buildpacks locally without to continually having to commit and deploy to Heroku.

This example relies heavily on the [heroku buildpack](https://github.com/leafo/heroku-openresty) buildpack.

# Usage

```sh
$ bundle
$ rspec spec/
```