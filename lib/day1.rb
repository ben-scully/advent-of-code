# lib/day1.rb

class Day1
  NORTH = 'north'
  EAST = 'east'
  SOUTH = 'south'
  WEST = 'west'

  def self.blocks_away(sequence)
    seqs = sequences(sequence)

    dirs_and_blks = directions_and_blocks(NORTH, seqs, [])

    norths  = blocks_per_direction(NORTH, dirs_and_blks)
    easts   = blocks_per_direction(EAST,  dirs_and_blks)
    souths  = blocks_per_direction(SOUTH, dirs_and_blks)
    wests   = blocks_per_direction(WEST,  dirs_and_blks)

    (norths - souths).abs + (wests - easts).abs
  end

  def self.sequences(sequence)
    sequence.split(', ').map { |item| {turn: item[0], blocks: item[1..-1].to_i } }
  end

  def self.directions_and_blocks(previous_facing, sequence, new_sequence)
    return new_sequence if sequence.empty?

    next_dir = sequence.shift

    now_facing = direction_after_turn(previous_facing, next_dir[:turn] == 'R')
    new_sequence.push({direction: now_facing, blocks: next_dir[:blocks]})

    directions_and_blocks(now_facing, sequence, new_sequence)
  end

  def self.direction_after_turn(direction, turn_clockwise)
    case direction
    when NORTH
        turn_clockwise ? EAST : WEST
    when EAST
        turn_clockwise ? SOUTH : NORTH
    when SOUTH
        turn_clockwise ? WEST : EAST
    when WEST
        turn_clockwise ? NORTH : SOUTH
    else
      raise 'Invalid direction given'
    end
  end

  def self.blocks_per_direction(direction, directions_and_blocks)
    directions_and_blocks
      .select { |item| item[:direction] == direction }
      .sum    { |item| item[:blocks] }
  end
end
