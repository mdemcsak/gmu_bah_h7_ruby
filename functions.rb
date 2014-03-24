# Return a reversed copy of the array
def reverse(an_array)
    an_array.reverse
end

# Return a map of letters and counts of letters
# Letters should be lowercase before counting
# For example, histogram('Hello') returns {'h'=>1,'e'=>1,'l'=>2,'o'=>1}
def histogram(a_string)
    char_hash = {}
    char_array = a_string.downcase.split(//)
    char_array.map{ |c| char_hash[c]=char_array.count(c) }
    char_hash
end

# Sum all the numbers in the array
# an_array can contain lots of different things
# Be sure to only sum the numbers
# (Hint: the is_a? method might be useful here)
# 
def sum_only_numbers(an_array)
    sum = 0
    for n in an_array
        sum += n if (n.is_a? Float) || (n.is_a? Integer)
    end
    sum
end

# For i from 1 to 100, return an array.
# The elements in the array should follow this algorithm:
# If i is a multiple of 3, the element is 'Fizz'
# If i is a multiple of 5, the element is 'Buzz'
# If i is a multiple of 3 and 5, the element is 'FizzBuzz'
# Otherwise, the element is simply the value of i
# For example [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', ..., 14, 'FizzBuzz', ...]
def fizzbuzz
    ary = []
    for i in 1..100
        case
        when i % 15 == 0
            ary[i] = 'FizzBuzz'
        when i % 3 == 0
            ary[i] = 'Fizz'
        when i % 5 == 0
            ary[i] = 'Buzz'
        else
            ary[i] = i
        end # case
    end # for
    ary[1..100]
end # fizzbuzz

# Uncomment each of these to test your functions
puts reverse([3,6,'dog']).inspect
puts histogram('The Quick brown fox').inspect
puts sum_only_numbers [4, 'foo', [ ], 27, :rain, 3.14]
puts fizzbuzz.join("\n")