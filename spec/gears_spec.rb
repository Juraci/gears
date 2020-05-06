require "spec_helper"

RSpec.describe Gear do
  describe "#ratio" do
    it "returns the ratio between chainring and cog" do
      expect(Gear.new(52, 11).ratio).to eq 4.7272727272727275
    end
  end
end
