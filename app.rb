class CaesarCipher
  attr_reader :string_to_cipher
  def initialize string_to_cipher
    @string_to_cipher = string_to_cipher
  end
  def shift position
    position = !position.nil? ? position : 1
    code = ('a'.ord..'z'.ord).to_a
    string_shifted = ""

    @string_to_cipher.downcase.split('').each do | char |
      if char != " "
        tmp_position = char.ord + position
        tmp_cahr = code.index(tmp_position)
        string_shifted += code[tmp_cahr].chr
      else
        string_shifted += char
      end
    end
    string_shifted
  end
end