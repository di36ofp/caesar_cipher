class CaesarCipher
  attr_reader :string_to_cipher
  def initialize string_to_cipher, position
    @string_to_cipher = string_to_cipher
    @position = !position.nil? ? position : 3
  end
  def cipher action
    shift action
  end

  private

  def shift action
    code = ('a'..'z').to_a
    string_shifted = ""

    @string_to_cipher.downcase.split('').each do | char |
      if char != " "
        case action
        when 'right'
          code_index = ( code.index( char ) + @position ) % 26
        when 'left'
          code_index = ( code.index( char ) - @position ) % 26
        end
        string_shifted +=  code[code_index]
      else
        string_shifted += char
      end
    end
    string_shifted
  end
end