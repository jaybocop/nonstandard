# Nonstandard

This is an opinionated rubocp configuration.

- Prefer the rubocop/ruby style guide community defaults
- Enable performance, rails, rspec, faker, rake
- Disable things that we'd find in a default rails app that we don't need
  (comments on `config/application.rb`)

## Usage

Add this line to your application's Gemfile:

```ruby
gem 'nonstandard', require: false
```

Add this to your project `.rubocop.yml` file

```ruby
inherit_gem:
  nonstandard: default.yml
```

And then execute:

    $ bundle install

You can continue to add application-specific rules/overrides in the
`.rubocop.yml` file in the root of your application, including annotating
your todo list:

```ruby
inherit_from: .rubocop_todo.yml
```

## Development

### Testing locally

In your application, use the `path` attribute to point to your local copy of the gem

```ruby
    # Use the relative path from your application, to the nonstandard folder
    gem 'nonstandard', path: '../nonstandard', require: false
```

### Publishing the gem

If you have access to publish the gem on rubygems:

1. Update the `version.rb` file as appropriate
1. `bundle` if any dependencies  have changed
1. Commit all changes
1. Update the `CHANGELOG.md`
1. Publish to rubygems:
  1. `rake build`
  1. `cd pkg`
  1. `gem push nonstandard.<version_number>.gem`


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jaybocop/nonstandard.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
