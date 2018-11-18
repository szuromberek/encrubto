RSpec.describe Encrubto::Rsa do

    describe 'call encrypt' do
      it 'returns false if input is 6' do
        expect(Encrubto::Rsa.encrypt('6')).to eq('false')
      end

    end
end