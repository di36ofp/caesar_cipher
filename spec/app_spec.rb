require 'spec_helper'
require_relative "../app.rb"

describe CaesarCipher do

  describe "Caesar Cipher" do
    context "Get the string" do

      it "show the string" do
        expect(CaesarCipher.new('string', 0).string_to_cipher).to eq('string')
      end

      it "shift the string 1 position" do
        expect(CaesarCipher.new('string', 1).cipher('right')).to eq('tusjoh')
      end

      it "shift the string 3 position to left" do
        expect(CaesarCipher.new('string', 3).cipher('left')).to eq('pqofkd')
      end
    end
  end

end