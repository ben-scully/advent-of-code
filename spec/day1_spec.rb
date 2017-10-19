# spec/day1_spec.rb

require 'day1'

describe Day1 do
  subject(:day) { described_class }

  describe '#blocks_away' do
    context 'R2, L3' do
      let(:sequence) { 'R2, L3' }
      let(:blocks_away) { 5 }

      it 'returns 5 blocks away' do
        expect(day.blocks_away(sequence)).to eq(blocks_away)
      end
    end

    context 'R2, R2, R2' do
      let(:sequence) { 'R2, R2, R2' }
      let(:blocks_away) { 2 }

      it 'returns 2 blocks away' do
        expect(day.blocks_away(sequence)).to eq(blocks_away)
      end
    end

    context 'R5, L5, R5, R3' do
      let(:sequence) { 'R5, L5, R5, R3' }
      let(:blocks_away) { 12 }

      it 'returns 12 blocks away' do
        expect(day.blocks_away(sequence)).to eq(blocks_away)
      end
    end

    context 'R*, L*, L* ...' do
      let(:sequence) { 'L5, R1, R4, L5, L4, R3, R1, L1, R4, R5, L1, L3, R4, L2, L4, R2, L4, L1, R3, R1, R1, L1, R1, L5, R5, R2, L5, R2, R1, L2, L4, L4, R191, R2, R5, R1, L1, L2, R5, L2, L3, R4, L1, L1, R1, R50, L1, R1, R76, R5, R4, R2, L5, L3, L5, R2, R1, L1, R2, L3, R4, R2, L1, L1, R4, L1, L1, R185, R1, L5, L4, L5, L3, R2, R3, R1, L5, R1, L3, L2, L2, R5, L1, L1, L3, R1, R4, L2, L1, L1, L3, L4, R5, L2, R3, R5, R1, L4, R5, L3, R3, R3, R1, R1, R5, R2, L2, R5, L5, L4, R4, R3, R5, R1, L3, R1, L2, L2, R3, R4, L1, R4, L1, R4, R3, L1, L4, L1, L5, L2, R2, L1, R1, L5, L3, R4, L1, R5, L5, L5, L1, L3, R1, R5, L2, L4, L5, L1, L1, L2, R5, R5, L4, R3, L2, L1, L3, L4, L5, L5, L2, R4, R3, L5, R4, R2, R1, L5' }
      let(:blocks_away) { 242 }

      it 'returns 12 blocks away' do
        expect(day.blocks_away(sequence)).to eq(blocks_away)
      end
    end
  end
end
