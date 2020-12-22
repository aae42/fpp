# Insert + or - signs anywhere between the digits 123456789 in such a way that the expression evaluates to 100. The order of the digits must not be changed.

# Sample solution: 1 + 2 + 3 - 4 + 5 + 6 + 78 + 9 = 100

# Programming problem: Write a program to output all solutions. 

base = (1..9).to_a.join

def evaluate(string)
  left_hand_side = string.split(' ')
  result = left_hand_side.first.to_i

  left_hand_side.drop(1).each_with_index do |item, index|
    next_number = left_hand_side.drop(1)[index + 1]
    result += next_number.to_i if item == '+'
    result -= next_number.to_i if item == '-'
  end
  return result
end

choice_permutations = ['', ' + ', ' - '].repeated_permutation(8).to_a.drop(1)

possible_equations = choice_permutations.map do |choice|
    base.chars.zip(choice).flatten.compact.join
  end

possible_equations.each do |equation|
  result = evaluate(equation)
  puts "#{equation} = 100" if result == 100
end

