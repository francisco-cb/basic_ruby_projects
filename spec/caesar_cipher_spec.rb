require_relative '../caesar_cipher'

RSpec.describe 'Caesar Cipher' do

  describe 'Apply cipher to single strings' do

    it 'returns empty string when given empty string' do
      expect(cipher('')).to eq('')
    end

    it 'returns given string when given key of 0' do
      expect(cipher('abc', 0)).to eq('abc')
    end

    it 'returns encripted string when given key' do
      expect(cipher('a', 1)).to eq('b')
    end

    it 'returns encripted string when going over Z' do
      expect(cipher('xyz', 3)).to eq('abc')
    end

    it 'respects capitalization' do
      expect(cipher('XyZ', 3)).to eq('AbC')
    end
  end

  describe 'Apply cipher to multiple strings' do

    it 'returns given string when given key of 0' do
      expect(cipher('abc def', 0)).to eq('abc def')
    end

    it 'returns encripted string when given key' do
      expect(cipher('a b', 1)).to eq('b c')
    end

    it 'encripts only letters A-Z' do
      expect(cipher('ABC123', 1)).to eq('BCD123')
    end

    it 'encripts only letters a-z' do
      expect(cipher('abc123', 1)).to eq('bcd123')
    end

    it 'encripts arbitrary string' do
      expect(cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
    end

    it 'encripts arbitrary string' do
      expect(cipher('Omae wa mou shindeiru. -NANI!?!!', 21)).to eq('Jhvz rv hjp ncdiyzdmp. -IVID!?!!')
    end
  end
end