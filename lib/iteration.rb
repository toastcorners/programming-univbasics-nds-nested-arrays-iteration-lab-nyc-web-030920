def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  i = 0
  newArr = []
  while i < src.length
#=> create loop to flatten array and capture ingredients
      e = 0
      while e < src[i].length
  sentence = "I love #{src[i][e]} and #{src[i][e + 1]} on my pizza"
  newArr << sentence
      e += 2
      end
  i += 1
end
return newArr
end
  
  


def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
    i = 0
  larger = []
  while i < src.length
#=> create loop to flatten array and capture nums
      if src[i][0] > src[i][-1]
      larger.push(src[i][0])
      else
      larger.push(src[i][-1])
      end #=> if
      i += 1
    end
    return larger
end


def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  i = 0
  total = 0 
  while i < src.length
  if src[i][0] && src[i][-1] % 2 == 0
  evens = src[i][0] + src[i][-1]
  total += evens
end
i += 1
end#=>while loop
return total
end