require 'spec_helper'
require_relative "../app.rb"

describe CaesarCipher do

  describe "Caesar Cipher" do
    context "Get the string" do
      let(:caesar) do
        CaesarCipher.new('string')
      end

      it "show the string" do
        expect(caesar.string_to_cipher).to eq('string')
      end

      it "shift the string one position" do
        expect(caesar.cipher).to eq('tusjoh')
      end

      it "shift the string 3 position to left" do
        expect(caesar.cipher('left')).to eq('pqofkd')
      end
    end
  end

end