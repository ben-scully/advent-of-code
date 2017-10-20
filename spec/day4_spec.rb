# spec/day4_spec.rb

require 'day4'

describe Day4 do
  subject(:day) { described_class }

  # describe '#valid_sector_id?' do
  #   context 'when valid' do
  #     let(:sector_id) { 'aaaaa-bbb-z-y-x-123[abxyz]' }
  #
  #     it 'returns valid?' do
  #       expect(day.valid_sector_id?(sector_id)).to be true
  #     end
  #   end
  #
  #   context 'when valid' do
  #     let(:sector_id) { 'a-b-c-d-e-f-g-h-987[abcde]' }
  #
  #     it 'returns valid?' do
  #       expect(day.valid_sector_id?(sector_id)).to be true
  #     end
  #   end
  #
  #   context 'when valid' do
  #     let(:sector_id) { 'not-a-real-room-404[oarel]' }
  #
  #     it 'returns valid?' do
  #       expect(day.valid_sector_id?(sector_id)).to be true
  #     end
  #   end
  #
  #   context 'when invalid' do
  #     let(:sector_id) { 'totally-real-room-200[decoy]' }
  #
  #     it 'returns valid?' do
  #       expect(day.valid_sector_id?(sector_id)).to be false
  #     end
  #   end
  # end

  describe '#character_count' do
    context 'when valid' do
      let(:sector_id) { 'aaaaa-bbb-z-y-x-123[abxyz]' }
      let(:result) { [] }

      it 'returns character_count' do
        expect(day.character_count(sector_id)).to eql(result)
      end
    end

    context 'when valid' do
      let(:sector_id) { 'a-b-c-d-e-f-g-h-987[abcde]' }
      let(:result) { [] }

      it 'returns character_count' do
        expect(day.character_count(sector_id)).to eql(result)
      end
    end

    context 'when valid' do
      let(:sector_id) { 'not-a-real-room-404[oarel]' }
      let(:result) { [] }

      it 'returns character_count' do
        expect(day.character_count(sector_id)).to eql(result)
      end
    end

    context 'when invalid' do
      let(:sector_id) { 'totally-real-room-200[decoy]' }
      let(:result) { [] }

      it 'returns character_count' do
        expect(day.character_count(sector_id)).to eql(result)
      end
    end
  end

  # describe '#sector_id' do
  #   context 'when valid' do
  #     let(:sector_id) { 'aaaaa-bbb-z-y-x-123[abxyz]' }
  #     let(:result) { 123 }
  #
  #     it 'returns valid?' do
  #       expect(day.sector_id(sector_id)).to eql(result)
  #     end
  #   end
  #
  #   context 'when valid' do
  #     let(:sector_id) { 'a-b-c-d-e-f-g-h-987[abcde]' }
  #     let(:result) { 987 }
  #
  #     it 'returns valid?' do
  #       expect(day.sector_id(sector_id)).to eql(result)
  #     end
  #   end
  #
  #   context 'when valid' do
  #     let(:sector_id) { 'not-a-real-room-404[oarel]' }
  #     let(:result) { 404 }
  #
  #     it 'returns valid?' do
  #       expect(day.sector_id(sector_id)).to eql(result)
  #     end
  #   end
  #
  #   context 'when invalid' do
  #     let(:sector_id) { 'totally-real-room-200[decoy]' }
  #     let(:result) { 200 }
  #
  #     it 'returns valid?' do
  #       expect(day.sector_id(sector_id)).to eql(result)
  #     end
  #   end
  # end
end
