beatles = ["john", "ringo", "paul"]
# put an element into the array

# beatles.push("george")
beatles << "george"
p beatles

# Read an element in an array
p beatles[0]

# Rewrite a value at an index
beatles[0] = "yoko"
p beatles


# Delete an element
beatles.delete("yoko")
# beatles.delete_at(0)
p beatles

numbers = [1,2,3]
emails = ["some@gmail.com", ]


# beatles = ["ringo", "paul", "george"]
# Each
# beatles.each do |beatle|
#   # do something about that beatle
#   puts "#{beatle.capitalize} is a member of The Beatles!"
# end

beatles.each { |beatle| puts "#{beatle.capitalize} is a member of The Beatles!" }


puts "The end"
