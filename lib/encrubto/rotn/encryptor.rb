module Encrubto::RotN
  class Encryptor
  
    DOWNCASE = [*'a'..'z']
    UPCASE = [*'A'..'Z']

    def encrypt(plain_string, shift=3)
      check_arguments(plain_string, shift)
      plain_string.chars.map do |char|
        if DOWNCASE.include?(char)
          index = DOWNCASE.find_index(char)
          shifted_index = (index + shift) % DOWNCASE.length
          DOWNCASE[shifted_index]
        elsif UPCASE.include?(char)
          index = UPCASE.find_index(char)
          shifted_index = (index + shift) % UPCASE.length
          UPCASE[shifted_index]
        else
          char
        end
      end.join('')
    end
    
    def decrypt(cipher_string, shift=3)
      check_arguments(cipher_string, shift)
      cipher_string.chars.map do |char|
        if DOWNCASE.include?(char)
          index = DOWNCASE.find_index(char)
          shifted_index = (index - shift) % DOWNCASE.length
          DOWNCASE[shifted_index]
        elsif UPCASE.include?(char)
          index = UPCASE.find_index(char)
          shifted_index = (index - shift) % UPCASE.length
          UPCASE[shifted_index]
        else
          char
        end
      end.join('')
    end

    private

      def check_arguments(str, int)
        raise(ArgumentError.new("Argument must be string.")) unless str.is_a? String
        raise(ArgumentError.new("Argument must be string.")) unless int.is_a? Integer
      end

  end
end
