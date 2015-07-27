# MonoParches
Amazing Ruby monkey patchs that i like to have on hand (to use just in case, and like Justin said [0]).

[0] http://www.justinweiss.com/blog/2015/01/20/3-ways-to-monkey-patch-without-making-a-mess/

## Hash#string_merge:

This patch makes attaching CSS classes to HTML elements **so much nicer**:

```ruby
h = {:class => "btn"} # => {:class=>"btn"}
h.string_merge({:class => "btn-primary"}) # => {:class=>"btn btn-primary"}
```

Author: Justin Weiss (http://justinweiss.com)

## --to-be-continued--

## Installation

```
git clone http://github.com/nando/mono_parches
```

**TODO: make the gem available in rubygems.org**
Add this line to your application's Gemfile:

```ruby
gem 'mono_parches'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mono_parches

## Usage

```ruby
require 'mono_parches'
# Actually monkey-patch whatever you love:
Hash.include CoreExtensions::Hash::Merging
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/mono_parches. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## Thanks

Thanks to Álvaro Sánchez (@alsanars) for sharing the Justin Weiss' post with us in TheRubyRoom community here at The Cocktail.

And of course, thanks to every monkey-patch author:
  * Justin Weiss (justinweiss.com)

## License

MonoParches is distributed under the CeCILL 2.1 license. Please see LICENSE.txt (or LICENCE.txt in French) for details.

Each monkey-patch licence takes precedence over this if specified by their author.
