def encrypt(text)
  # prepare an array of A~Z
  a_to_z = ('A'..'Z').to_a
  # prepare another array X, Y, Z, A~W
  x_to_w = %w[X Y Z] | ('A'..'W').to_a
  # make an array of every character in the text  ( hello world = [h e l l o   w o r l d] )
  characters = text.split('')

  #
  # map the array of characters

  encrypted_characters = characters.map do |character|
    # if you encounter non alphabet, let it be
    # get the index of H from the A~Z array (e.g. 7)
    # get the character of the same index from the shifted array
    a_to_z.include?(character) ? x_to_w[a_to_z.index(character)] : character
  end
  # join the shifted characters back
  encrypted_characters.join
end

puts encrypt('HELLO WORLD!!')
