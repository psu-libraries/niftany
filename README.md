# Niftany

A portmanteau of Penn State's _nittany_ lion, and _nifty_, meaning fashionable and stylish.
Niftany combines different linters such as Rubocop, erb-lint, scss-lint and others,
manging their different versions and configurations in one gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'niftany'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install niftany

## Usage

To run all the linters at once:

    $ bundle exec niftany

Setup and run each linter accordingly:

### Rubocop

In your local `.rubocop.yml` file, add:

    inherit_gem:
      niftany: niftany_rubocop.yml

Then run:

    $ bundle exec rubocop -a

### erb-lint

Copy `niftany_erblint.yml` to `.erb-lint.yml` in your local repo and run:

    $ bundle exec erblint --lint-all --autocorrect

### scss-lint

Copy `niftany_scsslint.yml` to `.scss-lint.yml` in your local repo and run:

    $ bundle exec scss-lint
