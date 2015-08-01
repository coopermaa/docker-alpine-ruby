# alpine-ruby
[![](https://badge.imagelayers.io/coopermaa/alpine-ruby:latest.svg)](https://imagelayers.io/?images=coopermaa/alpine-ruby:latest 'Get your own badge on imagelayers.io')

Minimalist Docker image for Ruby based on Alpine linux.

## How to use this image

### Run interactive Ruby shell

```bash
$ docker run -it coopermaa/alpine-ruby
```
This will drop you an interactive Ruby shell.

### Run one line of Ruby script

```bash
$ docker run --rm coopermaa/alpine-ruby -e 'puts "Hello World"'
```
You will get printed "Hello World" from Ruby.

### Run a single Ruby script

You can run a Ruby script by using the Ruby Docker image directly:

```bash
$ docker run --rm -v "$PWD":/app coopermaa/alpine-ruby ruby /app/your-daemon-or-script.rb
```

## A note about Dockerfile

* The package `ruby-dev` depends on `ruby`, `ruby-irb`, `ruby-rake`, `ruby-io-console`, `ruby-minitest`,
  `ruby-json`, `ruby-libs`... The `apk` package manager will install all of them. 
  Run `apk info -a ruby-dev` for more information.
 
* Add the package `build-base` if you want to build gem native extesion (It will increase about 120MB to the image).
  The package `build-base` is similar package to `build-essential`.
