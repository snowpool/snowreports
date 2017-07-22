# Snowreports

This gem is a simple wrapper around [snowhq](https://www.snowhq.com/) . It allows pulling in of the snow data and exposes just a few of the fields.

## Installation
    gem install snowreports

## Usage

1. obtain api credentials from snowhq

```ruby

# configure it. You can either set a username and password like below
Snowreports::Fetcher.user = username
Snowreports::Fetcher.pass = password

# or, ENV["SNOW_USER"] and ENV["SNOW_PASS"] can be used.


Snowreports.all

#or

Snowreports.fetch(:turoa)

```

See [endpoints class](https://github.com/snowpool/snowreports/blob/f3a4787e816d5b6cf80adc0de0f8897d6cf62fdd/lib/snowreports/endpoint.rb#L7-L28) for the various field names you can pass in.

PR's welcome.
