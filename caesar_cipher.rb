def cipher(words='', key=0)
  char_list = words.split('')
  
  char_list.each_with_index do |char, indx|
    char_list[indx] = (char.ord + key).chr
  end

  char_list.join('')
end

def get_cipher_input
  puts "Enter some words:"
  words = gets.chomp
  puts "Enter a numeric key:"
  key = gets.chomp.to_i
  [words, key]
end

def use_cipher
  words, key = get_cipher_input()
  puts cipher(words, key)
end

use_cipher()