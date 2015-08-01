# alpine-ruby
[![](https://badge.imagelayers.io/coopermaa/alpine-ruby:latest.svg)](https://imagelayers.io/?images=coopermaa/alpine-ruby:latest 'Get your own badge on imagelayers.io')

Minimalist Docker image for Ruby based on Alpine linux.

## How to use this image

```bash
$ docker run -it coopermaa/alpine-ruby
```

This will drop you an interactive Ruby shell.

```bash
$ docker run --rm coopermaa/alpine-ruby -e 'puts "Hello World"'
```
Run one line of Ruby script. You will get printed "Hello World" from Ruby.

## A note about Dockerfile

* The package `ruby-dev` depends on `ruby`, `ruby-irb`, `ruby-rake`, `ruby-io-console`, `ruby-minitest`,
  `ruby-json`, `ruby-libs`... The `apk` package manager will install all of them. 
  Run `apk info -a ruby-dev` for more information.
 
* Add the package `build-base` if you want to build gem native extesion (It will increase about 120MB to the image).
  The package `build-base` is similar package to `build-essential`.
