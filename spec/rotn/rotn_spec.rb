RSpec.describe Encrubto::RotN do

  describe 'call encrypt' do
    it 'returns B if input is A and 1' do
      expect(Encrubto::RotN.encrypt('A', 1)).to eq('B')
    end

    it 'returns N if input is A and 39' do
      expect(Encrubto::RotN.encrypt('A', 39)).to eq('N')
    end

    it 'returns nCcYr if input is aPpLe and 39' do
      expect(Encrubto::RotN.encrypt('aPpLe', 39)).to eq('nCcYr')
    end

    it 'returns Z if input is A and -1' do
      expect(Encrubto::RotN.encrypt('A', -1)).to eq('Z')
    end

    it 'returns Z if input is A and -27' do
      expect(Encrubto::RotN.encrypt('A', -27)).to eq('Z')
    end

    it 'raises error if argument is not string' do
      expect { Encrubto::Caesar.encrypt(1) }.to raise_error(ArgumentError)
    end

    it 'raises error if second argument is not integer' do
      expect { Encrubto::RotN.encrypt("A", "B") }.to raise_exception(ArgumentError)
    end
  end

  describe 'call decrypt' do
    it 'returns A if input is B and 1' do
      expect(Encrubto::RotN.decrypt('B', 1)).to eq('A')
    end

    it 'returns A if input is N and 39' do
      expect(Encrubto::RotN.decrypt('N', 39)).to eq('A')
    end

    it 'returns aPpLe if input is nCcYr and 39' do
      expect(Encrubto::RotN.decrypt('nCcYr', 39)).to eq('aPpLe')
    end

    it 'returns A if input is Z and -1' do
      expect(Encrubto::RotN.decrypt('Z', -1)).to eq('A')
    end

    it 'returns A if input is Z and -27' do
      expect(Encrubto::RotN.decrypt('Z', -27)).to eq('A')
    end

    it 'raises error if argument is not string' do
      expect { Encrubto::Caesar.decrypt(1) }.to raise_error(ArgumentError)
    end

    it 'raises error if second argument is not integer' do
      expect { Encrubto::RotN.decrypt("A", "B") }.to raise_exception(ArgumentError)
    end
  end
end
