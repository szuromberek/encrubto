require_relative '../rotn/encryptor'

module Encrubto::Rot13
  class Encryptor < Encrubto::RotN::Encryptor

    SHIFT = 13
    
    def encrypt(plain_string)
      super(plain_string, SHIFT)
    end
    
    def decrypt(cipher_string)
      super(cipher_string, SHIFT)
    end
    
  end
end
