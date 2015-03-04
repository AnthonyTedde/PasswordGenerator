require "password_generator/version"

module PasswordGenerator
    # Range
    ASCII = ('!'..'~')
    ALPHA = ASCII.grep(/[[:alpha:]]/)
    LOWER = ASCII.grep(/[[:lower:]]/)
    UPPER = ASCII.grep(/[[:upper:]]/)
    DIGIT = ASCII.grep(/[[:digit:]]/)
    PUNCT = ASCII.grep(/[[:punct:]]/)

    def self.generate
        (1..20).map do
            ALPHA.sample
        end.join
    end

end

