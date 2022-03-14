def cipher(words='', key=0)
  char_list = words.split('')
  
  char_list.each_with_index do |char, indx|
    if (char.ord <= 90 && 65 <= char.ord)
      start_point = 65
    elsif (char.ord <= 122 && 97 <= char.ord)
      start_point = 97
    else
      next
    end

    char_list[indx] = ((char.ord - start_point + key)%26 + start_point).chr
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

if __FILE__ == $0
  use_cipher()
end
