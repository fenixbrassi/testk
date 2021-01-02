//Write a function that returns product of all numbers of an array or range

def product( numbers )
  result_product = 1
  if numbers.is_a? Range
    numbers = numbers.to_a
  end

  return 0 if !numbers.is_a? Array
  return 0 if numbers.empty?
  quantity = numbers.count

  quantity.times do
    result_product = result_product * numbers.pop
  end


  result_product
end
