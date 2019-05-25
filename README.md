Munchsrb
========

[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)][license]
[![Renovate](https://badges.renovateapi.com/github/paveg/munchsrb)][renovate]
[![CircleCI](https://circleci.com/gh/paveg/munchsrb.svg?style=svg&circle-token=d9adfa363e47070777441c9f94f9401b070a2a36)][circleci]
[![codecov](https://codecov.io/gh/paveg/munchsrb/branch/master/graph/badge.svg)][codecov]

[license]: https://github.com/paveg/munchsrb/blob/master/LICENSE
[renovate]: https://github.com/renovatebot/renovate
[circleci]: https://circleci.com/gh/paveg/munchsrb
[codecov]: https://codecov.io/gh/paveg/munchsrb

Munchsrb is rubygem for those who love Munch's Burger! 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'munchsrb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install munchsrb

## Usage

    # Please, set your google client key and spread sheet key. 
    $ bin/gather

### Environment

|key|value|
|:---:|:---:|
| `GOOGLE_CLIENT` | your google client id |
| `GOOGLE_CLIENT_SECRET` | your google client secret |
| `GOOGLE_REFRESH_TOKEN` | your google refresh token |
| `GOOGLE_SPREAD_SHEET_KEY` | your destination Google Spread Sheet Key |

## Development

After checking out the repo, run `bin/setup` to install dependencies. 

Then, run `bundle exec rake spec` to run the tests.

You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/paveg/munchsrb.
 
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Munchsrb project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/munchsrb/blob/master/CODE_OF_CONDUCT.md).
