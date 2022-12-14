@dictionary = {

  'a' => '.-',

  'b' => '-...',

  'c' => '-.-.',

  'd' => '-..',

  'e' => '.',

  'f' => '..-.',

  'g' => '--.',

  'h' => '....',

  'i' => '..',

  'j' => '.---',

  'k' => '-.-',

  'l' => '.-..',

  'm' => '--',

  'n' => '-.',

  'o' => '---',

  'p' => '.--.',

  'q' => '--.-',

  'r' => '.-.',

  's' => '...',

  't' => '-',

  'u' => '..-',

  'v' => '...-',

  'w' => '.--',

  'x' => '-..-',

  'y' => '-.--',

  'z' => '--..',

  '1' => '.----',

  '2' => '..---',

  '3' => '...--',

  '4' => '....-',

  '5' => '.....',

  '6' => '-....',

  '7' => '--...',

  '8' => '---..',

  '9' => '----.',

  '0' => '-----',

  ' ' => ' '

}

def decode_char(string)
  @dictionary.key(string).upcase
end

p decode_char('.-')

def decode_word(str)
  split_str = str.split

  word = ''

  split_str.each do |char|
    word.concat(decode_char(char))
  end

  word.upcase
end

p decode_word('-- -.--')

def decode_message(message)
  split_message = message.split('   ')

  result = ''

  split_message.each do |word|
    result.concat(decode_word(word))

    result.concat(' ') if word != split_message.last
  end

  result.upcase
end
