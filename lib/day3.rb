# lib/day3.rb

class Day3
  def self.possible_triangles(sides_list)
    sides = sorted_sides(sides_list)

    possible_triangles_count(sides, 0)
  end

  def self.possible_triangles_count(sides, count)
    return count if sides.empty?

    count += 1 if possible_triangle?(sides.shift)

    possible_triangles_count(sides, count)
  end

  def self.possible_triangle?(sides)
    sides[0] + sides[1] > sides[2]
  end

  def self.sorted_sides(list)
    list.split.map { |e| e.to_i }.each_slice(3).map { |e| e.sort }.to_a
  end
end
