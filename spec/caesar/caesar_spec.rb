RSpec.describe Encrubto::Caesar do

  describe 'call encrypt' do
    it 'returns "dSsOh" if input is "aPpLe"' do
      expect(Encrubto::Caesar.encrypt('aPpLe')).to eq('dSsOh')
    end

    it 'raises error if number of arguments is zero' do
      expect { Encrubto::Caesar.encrypt }.to raise_error(ArgumentError)
    end

    it 'raises error if argument is not string' do
      expect { Encrubto::Caesar.encrypt(1) }.to raise_error(ArgumentError)
    end
  end

  describe 'call decrypt' do
    it 'returns "aPpLe" if input is "nCcYr"' do
      expect(Encrubto::Caesar.decrypt('dSsOh')).to eq('aPpLe')
    end

    it 'raises error if number of arguments is zero' do
      expect { Encrubto::Caesar.decrypt }.to raise_error(ArgumentError)
    end

    it 'raises error if argument is not string' do
      expect { Encrubto::Caesar.decrypt(1) }.to raise_error(ArgumentError)
    end
  end

end
  