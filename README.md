# Mağara

![Ruby version](https://img.shields.io/badge/Ruby-v2.5.1-green.svg)
![Rails version](https://img.shields.io/badge/Rails-v5.2.1-green.svg)
[![Build status](https://travis-ci.com/BerkhanBerkdemir/magara.svg?branch=master)](https://travis-ci.com/BerkhanBerkdemir/magara)
![AGPL-3.0](https://img.shields.io/badge/license-AGPL--3.0-blue.svg)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)
[![Open Source Helpers](https://www.codetriage.com/berkhanberkdemir/magara/badges/users.svg)](https://www.codetriage.com/berkhanberkdemir/magara)

Welcome to the Mağara codebase. Let's build something awesome for students.

## What is Mağara?

Mağara is a platform where college and university students can find accommodation with ease. Mağara's key difference from other housing applications is the ability for tertiary institutions to install a local and customized instance on their servers. This saves institutions from paying exorbitant installation, maintenance and uninstall fees. 

There are two versions of Mağara:
1. Our self-hosted version
2. Download and install on your on-premises server

## Codebase

### The stack

Mağara runs top of [Ruby on Rails](https://rubyonrails.org), and, for now, it does not have JavaScript on the front end. It uses jQuery, Popper.js for Bootstrap.

## Getting started

> :bulb: Psst, are you looking a guide that covers how to help Mağara? [Here we go](.github/CONTRIBUTING.md)!

> :bulb: Hey nerd, check out wiki page. You will find what you want.

### Prerequisites

* [Ruby](https://www.ruby-lang.org/en/): Check out the Ruby version on the badge.
* [Yarn](https://yarnpkg.com/en/): please refer to their [installation guide](https://yarnpkg.com/en/docs/install).
* [Docker Compose](https://docs.docker.com/compose): again, please refer to their [installation guide](https://docs.docker.com/compose/install).

### Installation

```bash
# For Ubuntu
git clone git@github.com:BerkhanBerkdemir/magara.git
cd magara
docker-compose up -d
bin/setup
bundle exec rails s
```

## License

This program is free software: you can redistribute it and/or modify it under the terms of the **GNU Affero General Public License** as published by the Free Software Foundation, **either version 3 of the License, or (at your option) any later version**. Please see the [LICENSE](LICENSE) file in our repository for the full text.

Additionally, this program's wiki, `/docs` and other documentation pages are released under the [Creative Commons BY-SA 4.0][CC]

[CC]: https://creativecommons.org/licenses/by-sa/4.0/legalcode.txt
