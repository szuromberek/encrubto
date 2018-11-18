require 'encrubto/rsa/encryptor'

module Encrubto::Rsa
  
  def self.encrypt(str)
    rsa = Encrubto::Rsa::Encryptor.new
    rsa.encrypt(str)
  end

  def self.decrypt(encrypted)
    rsa = Encrubto::Rsa::Encryptor.new
    rsa.decrypt(encrypted)
  end
end