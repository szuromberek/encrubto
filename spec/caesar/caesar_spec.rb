RSpec.describe Encrubto::Caesar do

  describe 'call encrypt' do
    it 'returns "D" if input is "A"' do
      expect(Encrubto::Caesar.encrypt('A')).to eq('D')
    end

    it 'returns "dSsOh" if input is "aPpLe"' do
      expect(Encrubto::Caesar.encrypt('aPpLe')).to eq('dSsOh')
    end

    it 'raises error if first argument is not string' do
      expect { Encrubto::Caesar.encrypt(1) }.to raise_error(ArgumentError)
    end
  end

  describe 'call decrypt' do
    it 'returns "A" if input is "B"' do
      expect(Encrubto::Caesar.decrypt('D')).to eq('A')
    end

    it 'returns "aPpLe" if input is "dSsOh"' do
      expect(Encrubto::Caesar.decrypt('dSsOh')).to eq('aPpLe')
    end

    it 'raises error if first argument is not string' do
      expect { Encrubto::Caesar.decrypt(1) }.to raise_error(ArgumentError)
    end
  end

end
  