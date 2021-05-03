require 'encrubto/caesar/encryptor'

module Encrubto::Caesar
  def self.encrypt(plain_string)
    caesar = Encrubto::Caesar::Encryptor.new
    caesar.encrypt(plain_string)
  end

  def self.decrypt(cipher_string)
    caesar = Encrubto::Caesar::Encryptor.new
    caesar.decrypt(cipher_string)
  end
end
