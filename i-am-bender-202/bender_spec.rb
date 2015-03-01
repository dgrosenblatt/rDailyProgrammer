require 'rspec'
require_relative 'i-am-bender-202'

RSpec.describe "translate" do
  it "should translate a binary string to english" do
    expect(translate("01001000")).to eq("H")
    expect(translate("0100100001100101011011000110110001101111001000000101011101101111011100100110110001100100")).to eq("Hello World")
  end
end
