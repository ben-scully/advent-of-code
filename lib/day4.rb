# lib/day4.rb

class Day4
  def self.characters(sector_id)
    sector_id.split('-')[0..-2].join.chars
  end

  def self.sorted_character_frequency(chars)
    chars.each_with_object(Hash.new(0)){|key,hash| hash[key] += 1}
         .sort_by {|key, value| value}.to_h
  end

  def self.checksum(sector_id)
    sector_id.split('-').pop().split('[').pop[0..-2]
  end

  def self.value(sector_id)
    sector_id.split('-').pop().split('[').shift.to_i
  end
end
