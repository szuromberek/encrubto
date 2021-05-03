RSpec.describe Encrubto::Rot13 do

  describe 'call encrypt' do
    it 'returns N if input is A' do
      expect(Encrubto::Rot13.encrypt('A')).to eq('N')
    end

    it 'returns nCcYr if input is aPpLe' do
      expect(Encrubto::Rot13.encrypt('aPpLe')).to eq('nCcYr')
    end

    it 'raises error if argument is not string' do
      expect { Encrubto::Rot13.encrypt(10) }.to raise_error(ArgumentError)
    end
  end

  describe 'call decrypt' do
     it 'returns A if input is N' do
      expect(Encrubto::Rot13.decrypt('N')).to eq('A')
    end

    it 'returns aPpLe if input is nCcYr' do
      expect(Encrubto::Rot13.decrypt('nCcYr')).to eq('aPpLe')
    end

    it 'raises error if argument is not string' do
      expect { Encrubto::Rot13.decrypt(10) }.to raise_error(ArgumentError)
    end
  end
  
end
