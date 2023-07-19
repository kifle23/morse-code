MORSE_CODE = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
               '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
               '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
               '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
               '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
               '--..' => 'Z' }.freeze

def decode_morse_char(morse_char)
  MORSE_CODE[morse_char] || ''
end

def decode_morse_word(morse_word)
  morse_chars = morse_word.split
  morse_chars.map { |char| decode_morse_char(char) }.join
end

def decode_morse_message(morse_message)
  morse_words = morse_message.split('   ')
  morse_words.map { |word| decode_morse_word(word) }.join(' ')
end

message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode_morse_message(message)
puts decoded_message
