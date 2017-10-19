# lib/day1.rb

class Day1
  NORTH = 'north'
  EAST  = 'east'
  SOUTH = 'south'
  WEST  = 'west'

  def self.blocks_away(sequence)
    sequences = sequences(sequence)
    compass = { NORTH => 0, EAST => 0, SOUTH => 0, WEST => 0 }
    directions_and_blocks(NORTH, sequences, compass)
  end

  def self.sequences(sequence)
    sequence.split(', ').map { |item| {turn: item[0], blocks: item[1..-1].to_i } }
  end

  def self.directions_and_blocks(prev_facing, sequences, compass)
    return number_blocks(compass) if sequences.empty?

    next_dir = sequences.shift

    now_facing = dir_after_turn(prev_facing, next_dir[:turn] == 'R')

    update_compass(now_facing, next_dir[:blocks], compass)

    directions_and_blocks(now_facing, sequences, compass)
  end

  def self.dir_after_turn(dir_before_turn, turn_clockwise)
    case dir_before_turn
    when NORTH
        turn_clockwise ? EAST : WEST
    when EAST
        turn_clockwise ? SOUTH : NORTH
    when SOUTH
        turn_clockwise ? WEST : EAST
    else
        turn_clockwise ? NORTH : SOUTH
    end
  end

  def self.update_compass(dir, blks, compass)
    compass[dir] = compass[dir] + blks
  end

  def self.number_blocks(compass)
    (compass[NORTH]-compass[SOUTH]).abs + (compass[WEST]-compass[EAST]).abs
  end
end
