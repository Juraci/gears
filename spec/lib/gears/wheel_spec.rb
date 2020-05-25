require "spec_helper"

RSpec.describe Gears::Wheel do
  let(:rim)       { 26 }
  let(:tire)      { 1.5 }

  subject { described_class.new(rim, tire) }

  describe '#circumference' do
    it 'returns the circumference of a given wheel' do
      expect(subject.circumference).to eq 91.106186954104
    end
  end
end
