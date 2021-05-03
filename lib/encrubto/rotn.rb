require 'encrubto/rotn/encryptor'

module Encrubto::RotN
  def self.encrypt(str, offset)
    rotn = Encrubto::RotN::Encryptor.new
    rotn.encrypt(str, offset)
  end

  def self.decrypt(encrypted, offset)
    rotn = Encrubto::RotN::Encryptor.new
    rotn.decrypt(encrypted, offset)
  end
end
