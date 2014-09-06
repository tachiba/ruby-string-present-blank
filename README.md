# String#present/blank

This gem provides String#present and String#blank.

## Installation

Add this line to your application's Gemfile:

    gem 'string-present-blank'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install string-present-blank

## Usage

```ruby
# before

'abc' + 'efg' #=> 'abcefg'

'abc' + 'efg' if false #=> nil
'abc' + ('efg' if false) #=> TypeError: no implicit conversion of nil into String
'abc' + if false then 'efg' else '' end #=> 'abc'

# after

'abc' + 'efg'.blank(if: false) #=> 'abc'
'abc' + 'efg'.present(unless: false) #=> 'abc'

```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/string-present-blank/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
