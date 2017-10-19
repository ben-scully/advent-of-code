# spec/day2_spec.rb

require 'day2'

describe Day2 do
  subject(:day) { described_class }

  describe '#bathroom_code' do
    context 'R2, L3' do
      let(:instructions) { 'ULL
                        RRDDD
                        LURDL
                        UUUUD' }
      let(:code) { '1985' }

      it 'returns 5 blocks away' do
        expect(day.bathroom_code(instructions)).to eq(code)
      end
    end
  end

  describe '#bathroom_code' do
    context 'R2, L3' do
      let(:instructions) { 'DDDURLURURUDLDURRURULLRRDULRRLRLRURDLRRDUDRUDLRDUUDRRUDLLLURLUURLRURURLRLUDDURUULDURDRUUDLLDDDRLDUULLUDURRLUULUULDLDDULRLDLURURUULRURDULLLURLDRDULLULRRRLRLRULLULRULUUULRLLURURDLLRURRUUUDURRDLURUURDDLRRLUURLRRULURRDDRDULLLDRDDDDURURLLULDDULLRLDRLRRDLLURLRRUDDDRDLLRUDLLLLRLLRUDDLUUDRLRRRDRLRDLRRULRUUDUUDULLRLUDLLDDLLDLUDRURLULDLRDDLDRUDLDDLDDDRLLDUURRUUDLLULLRLDLUURRLLDRDLRRRRUUUURLUUUULRRUDDUDDRLDDURLRLRLLRRUDRDLRLDRRRRRRUDDURUUUUDDUDUDU
RLULUULRDDRLULRDDLRDUURLRUDDDUULUUUDDRDRRRLDUURDURDRLLLRDDRLURLDRRDLRLUURULUURDRRULRULDULDLRRDDRLDRUDUDDUDDRULURLULUDRDUDDDULRRRURLRRDLRDLDLLRLUULURLDRURRRLLURRRRRLLULRRRDDLRLDDUULDLLRDDRLLUUDRURLRULULRLRUULUUUUUDRURLURLDDUDDLRDDLDRRLDLURULUUDRDLULLURDLLLRRDRURUDDURRLURRDURURDLRUDRULUULLDRLRRDRLDDUDRDLLRURURLUDUURUULDURUDULRLRDLDURRLLDRDUDRUDDRLRURUDDLRRDLLLDULRRDRDRRRLURLDLURRDULDURUUUDURLDLRURRDRULLDDLLLRUULLLLURRRLLLDRRUDDDLURLRRRDRLRDLUUUDDRULLUULDURLDUUURUDRURUDRDLRRLDRURRLRDDLLLULUDDUULDURLRUDRDDD
RDDRUDLRLDDDRLRRLRRLUULDRLRUUURULRRLUURLLLRLULDDLDLRLULULUUDDDRLLLUDLLRUDURUDDLLDUDLURRULLRDLDURULRLDRLDLDRDDRUDRUULLLLRULULLLDDDULUUDUUDDLDRLRRDLRLURRLLDRLDLDLULRLRDLDLRLUULLDLULRRRDDRUULDUDLUUUUDUDRLUURDURRULLDRURUDURDUULRRULUULULRLDRLRLLRRRLULURLUDULLDRLDRDRULLUUUDLDUUUDLRDULRDDDDDDDDLLRDULLUDRDDRURUDDLURRUULUURURDUDLLRRRRDUDLURLLURURLRDLDUUDRURULRDURDLDRUDLRRLDLDULRRUDRDUUDRLURUURLDLUDLLRDDRDU
LLDDDDLUDLLDUDURRURLLLLRLRRLDULLURULDULDLDLLDRRDLUDRULLRUUURDRLLURDDLLUDDLRLLRDDLULRLDDRURLUDRDULLRUDDLUURULUUURURLRULRLDLDDLRDLDLLRUURDLUDRRRDDRDRLLUDDRLDRLLLRULRDLLRLRRDDLDRDDDUDUDLUULDLDUDDLRLDUULRULDLDULDDRRLUUURUUUDLRDRULDRRLLURRRDUDULDUDUDULLULLULULURLLRRLDULDULDLRDDRRLRDRLDRLUDLLLUULLRLLRLDRDDRUDDRLLDDLRULLLULRDDDLLLDRDLRULDDDLULURDULRLDRLULDDLRUDDUDLDDDUDRDRULULDDLDLRRDURLLRLLDDURRLRRULLURLRUDDLUURULULURLRUDLLLUDDURRLURLLRLLRRLDULRRUDURLLDDRLDLRRLULUULRRUURRRDULRLRLRDDRDULULUUDULLLLURULURRUDRLL
UULLULRUULUUUUDDRULLRLDDLRLDDLULURDDLULURDRULUURDLLUDDLDRLUDLLRUURRUDRLDRDDRRLLRULDLLRUUULLLDLDDULDRLRURLDRDUURLURDRUURUULURLRLRRURLDDDLLDDLDDDULRUDLURULLDDRLDLUDURLLLLLRULRRLLUDRUURLLURRLLRDRLLLRRDDDRRRDLRDRDUDDRLLRRDRLRLDDDLURUUUUULDULDRRRRLUDRLRDRUDUDDRULDULULDRUUDUULLUDULRLRRURDLDDUDDRDULLUURLDRDLDDUURULRDLUDDLDURUDRRRDUDRRDRLRLULDRDRLRLRRUDLLLDDDRURDRLRUDRRDDLDRRLRRDLUURLRDRRUDRRDLDDDLRDDLRDUUURRRUULLDDDLLRLDRRLLDDRLRRRLUDLRURULLDULLLUDLDLRLLDDRDRUDLRRDDLUU' }
      let(:code) { '1985' }

      it 'returns 5 blocks away' do
        expect(day.bathroom_code(instructions)).to eq(code)
      end
    end
  end

  describe '#one_digit' do
    context 'one line of moves' do
      let(:prev_digit) { 5 }
      let(:moves) { 'UUL' }
      let(:code) { 1 }

      it 'returns digit' do
        expect(day.one_digit(prev_digit, moves)).to eq(code)
      end
    end

    context 'one line of moves' do
      let(:prev_digit) { 5 }
      let(:moves) { 'RRDDD' }
      let(:code) { 9 }

      it 'returns digit' do
        expect(day.one_digit(prev_digit, moves)).to eq(code)
      end
    end

    context 'one line of moves' do
      let(:prev_digit) { 5 }
      let(:moves) { 'LURDL' }
      let(:code) { 4 }

      it 'returns digit' do
        expect(day.one_digit(prev_digit, moves)).to eq(code)
      end
    end

    context 'one line of moves' do
      let(:prev_digit) { 5 }
      let(:moves) { 'UUUUD' }
      let(:code) { 5 }

      it 'returns digit' do
        expect(day.one_digit(prev_digit, moves)).to eq(code)
      end
    end
  end

  describe '#next_digit' do
    context 'when moving U' do
      let(:prev_digits) { Array(1..9) }
      let(:move) { 'U' }
      let(:next_digits) { [1,2,3,1,2,3,4,5,6] }

      it 'returns digit' do
        prev_digits.each do |prev|
          expect(day.one_digit(prev, move)).to eq(next_digits[prev-1])
        end
      end
    end

    context 'when moving D' do
      let(:prev_digits) { Array(1..9) }
      let(:move) { 'D' }
      let(:next_digits) { [4,5,6,7,8,9,7,8,9] }

      it 'returns digit' do
        prev_digits.each do |prev|
          expect(day.one_digit(prev, move)).to eq(next_digits[prev-1])
        end
      end
    end

    context 'when moving L' do
      let(:prev_digits) { Array(1..9) }
      let(:move) { 'L' }
      let(:next_digits) { [1,1,2,4,4,5,7,7,8] }

      it 'returns digit' do
        prev_digits.each do |prev|
          expect(day.one_digit(prev, move)).to eq(next_digits[prev-1])
        end
      end
    end

    context 'when moving R' do
      let(:prev_digits) { Array(1..9) }
      let(:move) { 'R' }
      let(:next_digits) { [2,3,3,5,6,6,8,9,9] }

      it 'returns digit' do
        prev_digits.each do |prev|
          expect(day.one_digit(prev, move)).to eq(next_digits[prev-1])
        end
      end
    end
  end
end
