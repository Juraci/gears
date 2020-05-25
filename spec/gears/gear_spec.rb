require "spec_helper"

RSpec.describe Gears::Gear do
  let(:chainring) { 52 }
  let(:cog)       { 11 }
  let(:rim)       { 26 }
  let(:tire)      { 1.5 }
  let(:wheel)     { Gears::Wheel.new(rim, tire) }

  subject { described_class.new(chainring, cog, wheel) }

  describe '#ratio' do
    it 'returns the ratio between chainring and cog' do
      expect(subject.ratio).to eq 4.7272727272727275
    end
  end

  describe '#gear_inches' do
    it 'returns the result based on the wheel diameter times the gear ratio' do
      expect(subject.gear_inches).to eq 137.0909090909091
    end
  end
end
