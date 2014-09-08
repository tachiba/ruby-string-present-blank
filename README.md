# String#present/blank

This gem provides String#present and String#blank.

## Usage

### Before

```ruby
'abc' + 'efg' #=> 'abcefg'
'abc' + 'efg' if false #=> nil
'abc' + ('efg' if false) #=> TypeError: no implicit conversion of nil into String
'abc' + if false then 'efg' else '' end #=> 'abc'
```

### After

```ruby
'abc' + 'efg'.blank(if: true) #=> 'abc'
'abc' + 'efg'.present(unless: true) #=> 'abc'
```

### Examples

```haml
%div= link_to('abc', abc_path, class: 'abc'.present(if: abc?))
```

## Installation

Add this line to your application's Gemfile:

    gem 'string-present-blank'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install string-present-blank

## Contributing

1. Fork it ( https://github.com/tachiba/string-present-blank/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
