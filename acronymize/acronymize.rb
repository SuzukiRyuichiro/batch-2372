# what the fuck -> WTF
# you only live once -> YOLO
# thank god it's friday -> TGIF
# work from home -> WFH
# return to office -> RTO
# Japan Rail -> JR
# maybe Federal bureau of investigation -> FBI
#
# define a method that turns a string of name or phrase into an acronym

def acronymize(phrase)
  # make an empty array
  first_characters = []
  # split the phrase into words (e.g ['work', 'from', 'home'])
  words = phrase.split
  # for each word,
  words.each do |word|
    # capitalize that word
    # split the word into characters
    # take the first character ('W')
    first_character_uppercased = word.capitalize[0]
    # throw that into the array
    first_characters << first_character_uppercased
  end

  # join the first capitalized char into a single string
  first_characters.join
end
