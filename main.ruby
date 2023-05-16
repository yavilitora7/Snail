def snail(array)
  result = []
  while array.flatten.any?
    # Traverse right
    result += array.shift
    # Traverse down
    array.each { |row| result << row.pop }
    # Traverse left
    result += array.pop.reverse unless array.empty?
    # Traverse up
    array.reverse.each { |row| result << row.shift } unless array.empty?
  end
  result
end

#testing this out 

def test input , expected
  output = snail(input)
  Test.expect(expected == output, "When snail(#{input}) expected #{expected} but got #{output}")
end

test( [[1,2,3],[4,5,6],[7,8,9]] , [1, 2, 3, 6, 9, 8, 7, 4, 5])
