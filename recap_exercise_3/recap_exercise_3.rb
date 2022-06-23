# def no_dupes?(arr)

#     arr.reject {|x| arr.count(x) >= 2}


# end

# # Examples
# p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
# p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
# p no_dupes?([true, true, true])            # => []


# def no_consecutive_repeats?(arr)

# arr.each_with_index do |x,i|
#     if i < arr.length - 1
#         if arr[i] == arr[i+1]
#             return false
#         end
#     end
# end

# return true

# end


# # Examples
# p no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])     # => true
# p no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])     # => false
# p no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
# p no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
# p no_consecutive_repeats?(['x'])                              # => true



# def char_indices(str)

# hash = Hash.new([])

# str.each_char.with_index do |x,i|
#     hash[x] += [i]
# end
# hash
# end

# p char_indices('mississippi')   # => {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
# p char_indices('classroom')     # => {"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]}



# def longest_streak(str)

#     hash = str.split("").tally
#     j = (-1 - hash.values.reverse.index(hash.values.max) + hash.values.length)
#     hash.keys[j] * hash.values[j]
# end

# # Examples
# p longest_streak('a')           # => 'a'
# p longest_streak('accccbbb')    # => 'cccc'
# p longest_streak('aaaxyyyyyzz') # => 'yyyyy
# p longest_streak('aaabbb')      # => 'bbb'
# p longest_streak('abc')         # => 'c'


# def bi_prime?(num)

# def is_prime?(num)
#     return false if num < 2
#     (2...num).each do |x|
#         if num % x == 0
#             return false
#          end
#     end
#     return true

# end


# arr = []
# (2...num).each do |y|
#     if num % y == 0
#         arr << y
#     end
# end

# new = arr.select {|j| is_prime?(j)}

# new.each_with_index do |x, i|
#     new.each_with_index do |y, j|
#         if j >= i
#             if x * y == num
#                 return true
#             end
#         end
#     end
# end
# return false
# end

# # Examples
# p bi_prime?(14)   # => true
# p bi_prime?(22)   # => true
# p bi_prime?(25)   # => true
# p bi_prime?(94)   # => true
# p bi_prime?(24)   # => false
# p bi_prime?(64)   # => false

# def vigenere_cipher(message, keys)
#     cipher = ""
#     abc = "abcdefghijklmnopqrstuvwxyz"

#     message.each_char.with_index do |x, i|
#         cipher += abc[(abc.index(x) + keys[0]) % 26]
#         keys.rotate!
#     end

#     return cipher

# end


# # Examples
# p vigenere_cipher("toerrishuman", [1])        # => "upfssjtivnbo"
# p vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"
# p vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
# p vigenere_cipher("zebra", [3, 0])            # => "ceerd"
# p vigenere_cipher("yawn", [5, 1])             # => "dbbo"


# require "byebug"
# def vowel_rotate(str)
#     arr = []
#     final = ""
#     # debugger
#     str.each_char do |x|
#         if x.match?(/[aeiou]/)
#             arr << x
#         end
#     end
# arr.unshift(arr.pop)
#     str.each_char.with_index do |x, i|
#         if x.match?(/[aeiou]/)
#             final += arr[0]
#             arr.rotate!
#         else
#             final += x
#         end
#     end

#     final
# end

# p vowel_rotate('computer')      # => "cempotur"
# p vowel_rotate('oranges')       # => "erongas"
# p vowel_rotate('headphones')    # => "heedphanos"
# p vowel_rotate('bootcamp')      # => "baotcomp"
# p vowel_rotate('awesome')       # => "ewasemo"




# class String

#     def select(&prc)

#         prc ||= Proc.new {|z| z.match?(/[\W]/)}

#         final = ""
#         self.each_char do |x|
#             if prc.call(x)
#                 final += x
#             end
#         end
#         final
#     end
    



# p "app academy".select { |ch| !"aeiou".include?(ch) }   # => "pp cdmy"
# p "HELLOworld".select { |ch| ch == ch.upcase }          # => "HELLO"
# p "HELLOworld".select          # => ""


#     def map!(&prc)
    
#     final = ""

#     self.each_char.with_index do |x, i|
#         self[i] = prc.call(x)
#     end
    
#     self
    
#     end

# end
# require "byebug"
# # Examples
# word_1 = "Lovelace"
# word_1.map! do |ch| 
#     if ch == 'e'
#         '3'
#     elsif ch == 'a'
#         '4'
#     else
#         ch
#     end
# end
# p word_1        # => "Lov3l4c3"
# # debugger
# word_2 = "Dijkstra"
# word_2.map! do |ch|
#     if word_2.index(ch).even?
#         ch.upcase
#     else
#         ch.downcase
#     end
# end
# p word_2        # => "DiJkStRa"



# def multiply(a, b)

#     if b > 0

#     return a if b == 1

#     a + multiply(a, b - 1)

#     elsif b == 0
#         return 0

#     elsif b < 0
#         return -a if b == -1

#         -a + multiply(a, b + 1)

#     end
# end

# # Examples
# p multiply(3, 5)        # => 15
# p multiply(5, 3)        # => 15
# p multiply(2, 4)        # => 8
# p multiply(0, 10)       # => 0
# p multiply(-3, -6)      # => 18
# p multiply(3, -6)       # => -18
# p multiply(-3, 6)       # => -18



# def lucas_sequence(n)

#     return [] if n == 0

#     return [2] if n == 1

# return [2, 1] if n == 2

# lucas_sequence(n-1) + [(lucas_sequence(n-1)[-2] + lucas_sequence(n-1)[-1])]


# end



# # Examples
# p lucas_sequence(0)   # => []
# p lucas_sequence(1)   # => [2]    
# p lucas_sequence(2)   # => [2, 1]
# p lucas_sequence(3)   # => [2, 1, 3]
# p lucas_sequence(6)   # => [2, 1, 3, 4, 7, 11]
# p lucas_sequence(8)   # => [2, 1, 3, 4, 7, 11, 18, 29]



def prime_factorization(num)



(2...num).each do |x|
    if num % x == 0
        return prime_factorization(x) + prime_factorization(num/x)
    end

end
    
[num]

end

# Examples
p prime_factorization(12)     # => [2, 2, 3]
p prime_factorization(24)     # => [2, 2, 2, 3]
p prime_factorization(25)     # => [5, 5]
p prime_factorization(60)     # => [2, 2, 3, 5]
p prime_factorization(7)      # => [7]
p prime_factorization(11)     # => [11]
p prime_factorization(2017)   # => [2017]