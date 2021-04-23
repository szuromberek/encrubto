module Encrubto::Caesar
  class Encryptor 
    
    DOWNCASE = [*'a'..'z']
    UPCASE = [*'A'..'Z']
    SHIFT = 3

    def encrypt(plain_string)
      raise(ArgumentError.new("Argument must be string.")) unless plain_string.is_a? String
      plain_string.chars.map do |char|
        if DOWNCASE.include?(char)
          index = DOWNCASE.find_index(char)
          shifted_index = (index + SHIFT) % DOWNCASE.length
          DOWNCASE[shifted_index]
        elsif UPCASE.include?(char)
          index = UPCASE.find_index(char)
          shifted_index = (index + SHIFT) % UPCASE.length
          UPCASE[shifted_index]
        else
          char
        end
      end.join('')
    end
    
    def decrypt(cipher_string)
      raise(ArgumentError.new("Argument must be string.")) unless cipher_string.is_a? String
      cipher_string.chars.map do |char|
        if DOWNCASE.include?(char)
          index = DOWNCASE.find_index(char)
          shifted_index = (index - SHIFT) % DOWNCASE.length
          DOWNCASE[shifted_index]
        elsif UPCASE.include?(char)
          index = UPCASE.find_index(char)
          shifted_index = (index - SHIFT) % UPCASE.length
          UPCASE[shifted_index]
        else
          char
        end
      end.join('')
    end

  end
end
  