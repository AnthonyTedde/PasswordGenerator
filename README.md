# Ruby tips from the Pope video on PluralSight

## Summary

Subjet of this course is to create a password generator

## Tips

### ASCII and regex manipulation

```Ruby
ASCII = ('!'..'~')
ALPHA = ASCII.grep(/[[:alpha:]]/)
LOWER = ASCII.grep(/[[:lower:]]/)
UPPER = ASCII.grep(/[[:upper:]]/)
DIGIT = ASCII.grep(/[[:digit:]]/)
PUNCT = ASCII.grep(/[[:punct:]]/)
```

### Test values from pry.

[pry](https://github.com/pry/pry) is an alternative to native IRB shell.

To test the value created to the module first lauch pry and load the class:

```sh
bundle exec pry
```

```ruby
require 'password_generator'
PasswordGenerator::ASCII
PasswordGenerator::UPPER
# and so forth
```
### Concat value from map loop

```ruby
(1..20).map do
    ALPHA.sample
end.join
```
[Array\#sample](http://ruby-doc.org//core-2.2.0/Array.html#method-i-sample)
return a random element from the array.

[Array\#map](http://ruby-doc.org//core-2.1.1/Array.html#method-i-map)
return a new array containing the value returned by the block.

[Array\#join](http://ruby-doc.org//core-2.1.1/Array.html#method-i-join)
converting an array into string. It can take param:

1. __separator__ (by default empty string)

