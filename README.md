# dotenvs

Small extension to [cr-dotenv](https://github.com/gdotdesign/cr-dotenv) that loads `.env` files in the following order:

1. `.env`
1. `.env.development` - depends on environment
1. `.env.development.local` - depends on environment, file should be excluded from repo

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  dotenvs:
    github: qbart/dotenvs-cr
```

## Usage

```crystal
require "dotenvs"
```

```crystal
Dotenvs.load("development")
Dotenvs.load(ENV["KEMAL_ENV"])
Dotenvs.load(ENV.fetch("KEMAL_ENV", "development"))
# ...

# production env is skipped, if you want to load .env files anyway, you can do:
Dotenvs.load(ENV["KEMAL_ENV"], allow_production: true) # default is false
```
