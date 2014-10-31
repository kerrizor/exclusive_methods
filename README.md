# ExclusiveMethods

Adds methods to a Ruby class that return methods that are exclusive to that class, and do not belong to its ancestors.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'exclusive_methods'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install exclusive_methods

## Usage

```ruby
[1] pry(main)> require 'exclusive_methods'
=> true
[2] pry(main)> String.exclusive_instance_methods.inspect
=> "[:casecmp, :+, :*, :%, :[], :[]=, :insert, :length, :size, :bytesize, :empty?, :match, :succ, :succ!, :next, :next!, :upto, :index, :rindex, :replace, :clear, :chr, :getbyte, :setbyte, :byteslice, :scrub, :scrub!, :to_i, :to_f, :to_str, :dump, :upcase, :downcase, :capitalize, :swapcase, :upcase!, :downcase!, :capitalize!, :swapcase!, :hex, :oct, :split, :lines, :bytes, :chars, :codepoints, :reverse, :reverse!, :concat, :<<, :prepend, :crypt, :intern, :to_sym, :ord, :include?, :start_with?, :end_with?, :scan, :ljust, :rjust, :center, :sub, :gsub, :chop, :chomp, :strip, :lstrip, :rstrip, :sub!, :gsub!, :chop!, :chomp!, :strip!, :lstrip!, :rstrip!, :tr, :tr_s, :delete, :squeeze, :count, :tr!, :tr_s!, :delete!, :squeeze!, :each_line, :each_byte, :each_char, :each_codepoint, :sum, :slice, :slice!, :partition, :rpartition, :encoding, :force_encoding, :b, :valid_encoding?, :ascii_only?, :unpack, :encode, :encode!, :to_r, :to_c, :shellsplit, :shellescape, :shell_split]"
[3] pry(main)> String.exclusive_class_methods.inspect
=> "[:try_convert]"
[4] pry(main)> class String; def self.fizz;end;end
=> :fizz
[5] pry(main)> String.exclusive_class_methods.inspect
=> "[:try_convert, :fizz]"
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/exclusive_methods/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
