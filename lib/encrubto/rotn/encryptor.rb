module Encrubto::RotN
  class Encryptor
  
    DOWNCASE = [*'a'..'z']
    UPCASE = [*'A'..'Z']

    # Encrypts text using RotN encryption.
    #
    # @param plain_string [String] the text to encrypt
    # @param shift [Integer] (3) the offset to use for encryption
    # @return [String] the encrypted text
    # @raise [ArgumentError] if the first argument is not String or the second argument is not Integer
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
    
    # Decrypts text using RotN encryption.
    #
    # @param cipher_string [String] the text to decrypt
    # @param shift [Integer] (3) the offset to use for decryption
    # @return [String] the decrypted text
    # @raise [ArgumentError] if the first argument is not String or the second argument is not Integer
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
        raise(ArgumentError.new("Argument must be String.")) unless str.is_a? String
        raise(ArgumentError.new("Argument must be Integer.")) unless int.is_a? Integer
      end

  end
end
