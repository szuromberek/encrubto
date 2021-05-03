require 'encrubto/rot13/encryptor'

module Encrubto::Rot13
  def self.encrypt(plain_string)
    rot13 = Encrubto::Rot13::Encryptor.new
    rot13.encrypt(plain_string)
  end

  def self.decrypt(cipher_string)
    rot13 = Encrubto::Rot13::Encryptor.new
    rot13.decrypt(cipher_string)
  end
end
