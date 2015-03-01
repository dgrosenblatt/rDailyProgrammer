require 'rspec'
require_relative 'i-am-bender-202'

RSpec.describe "translate" do
  it "should translate a binary string to english" do
    expect(translate("01001000")).to eq("H")
    expect(translate("01001000011001010110110001101100011011110010000001010111\
    01101111011100100110110001100100")).to eq("Hello World")
  end

  it "should translate a binary string to english in one line" do
    expect(line_translate("01001000")).to eq("H")
    expect(line_translate("010010000110010101101100011011000110111100100000010\
    1011101101111011100100110110001100100")).to eq("Hello World")
  end
end
