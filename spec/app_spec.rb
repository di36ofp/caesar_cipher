require 'spec_helper'
require_relative "../app.rb"

describe CaesarCipher do

  describe "Caesar Cipher" do
    context "Get the string" do
      it "show the string" do
        expect(CaesarCipher.new('string').string_to_cipher).to eq('string')
      end
    end
  end

end