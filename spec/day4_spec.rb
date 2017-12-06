# spec/day4_spec.rb

require 'day4'

describe Day4 do
  let(:sector_id_1) { 'aaaaa-bbb-z-y-x-123[abxyz]' }
  let(:sector_id_2) { 'a-b-c-d-e-f-g-h-987[abcde]' }
  let(:sector_id_3) { 'not-a-real-room-404[oarel]' }
  let(:sector_id_4) { 'totally-real-room-200[decoy]' }

  subject(:day) { described_class }

  describe '#characters' do
    context 'when given complete sectorid' do
      let(:sector_id) { sector_id_1 }
      let(:result) { ['a','a','a','a','a','b','b','b','z','y','x'] }

      it 'returns characters' do
        expect(day.characters(sector_id)).to eql(result)
      end
    end

    context 'when given complete sectorid' do
      let(:sector_id) { sector_id_2 }
      let(:result) { ['a','b','c','d','e','f','g','h'] }

      it 'returns characters' do
        expect(day.characters(sector_id)).to eql(result)
      end
    end

    context 'when given complete sectorid' do
      let(:sector_id) { sector_id_3 }
      let(:result) { ['n','o','t','a','r','e','a','l','r','o','o','m'] }

      it 'returns characters' do
        expect(day.characters(sector_id)).to eql(result)
      end
    end

    context 'when given complete sectorid' do
      let(:sector_id) { sector_id_4 }
      let(:result) { ['t','o','t','a','l','l','y','r','e','a','l','r','o','o','m'] }

      it 'returns characters' do
        expect(day.characters(sector_id)).to eql(result)
      end
    end
  end

  describe '#checksum' do
    context 'when given complete sectorid' do
      let(:sector_id) { sector_id_1 }
      let(:result) { 'abxyz' }

      it 'returns checksum' do
        expect(day.checksum(sector_id)).to eql(result)
      end
    end

    context 'when given complete sectorid' do
      let(:sector_id) { sector_id_2 }
      let(:result) { 'abcde' }

      it 'returns checksum' do
        expect(day.checksum(sector_id)).to eql(result)
      end
    end

    context 'when given complete sectorid' do
      let(:sector_id) { sector_id_3 }
      let(:result) { 'oarel' }

      it 'returns checksum' do
        expect(day.checksum(sector_id)).to eql(result)
      end
    end

    context 'when given complete sectorid' do
      let(:sector_id) { sector_id_4 }
      let(:result) { 'decoy' }

      it 'returns checksum' do
        expect(day.checksum(sector_id)).to eql(result)
      end
    end
  end

  describe '#value' do
    context 'when given complete sectorid' do
      let(:sector_id) { sector_id_1 }
      let(:result) { 123 }

      it 'returns value' do
        expect(day.value(sector_id)).to eql(result)
      end
    end

    context 'when given complete sectorid' do
      let(:sector_id) { sector_id_2 }
      let(:result) { 987 }

      it 'returns value' do
        expect(day.value(sector_id)).to eql(result)
      end
    end

    context 'when given complete sectorid' do
      let(:sector_id) { sector_id_3 }
      let(:result) { 404 }

      it 'returns value' do
        expect(day.value(sector_id)).to eql(result)
      end
    end

    context 'when given complete sectorid' do
      let(:sector_id) { sector_id_4 }
      let(:result) { 200 }

      it 'returns value' do
        expect(day.value(sector_id)).to eql(result)
      end
    end
  end
end
