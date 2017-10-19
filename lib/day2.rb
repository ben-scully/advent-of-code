# lib/day2.rb

class Day2
  U = 'U'
  D = 'D'
  L = 'L'
  R = 'R'

  def self.bathroom_code(instructions)
    lines = instructions.split
    all_digits(5, lines, [])
  end

  def self.all_digits(prev_digit, lines, digits)
    return digits.join('') if lines.empty?

    digit = one_digit(prev_digit, lines.shift)

    all_digits(digit, lines, digits.push(digit))
  end

  def self.one_digit(prev_digit, moves)
    return prev_digit if moves.empty?

    digit = next_digit(prev_digit, moves[0])

    one_digit(digit, moves[1..-1])
  end

  def self.next_digit(digit, move)
    case move
    when U
      digit > 3 ? digit-3 : digit
    when D
      digit <= 6  ? digit+3 : digit
    when L
      digit % 3 == 1 ? digit : digit-1
    when R
      digit % 3 == 0 ? digit : digit+1
    else
      raise 'woops'
    end
  end
end
