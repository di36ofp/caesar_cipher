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
        expect(caesar.cipher(1)).to eq('tusjoh')
      end
    end
  end

end