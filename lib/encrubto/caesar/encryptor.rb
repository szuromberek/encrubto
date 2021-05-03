require_relative '../rotn/encryptor'

module Encrubto::Caesar
  class Encryptor < Encrubto::RotN::Encryptor
  
    SHIFT = 3
    
    def encrypt(plain_string)
      super(plain_string, SHIFT)
    end
    
    def decrypt(cipher_string)
      super(cipher_string, SHIFT)
    end
    
  end
end
  