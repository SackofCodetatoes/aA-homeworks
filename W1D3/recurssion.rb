def sum_to(num)
  if num == 1
    num
  elsif num > 1
    num + sum_to(num-1)
  end
end

def add_numbers(nums_array)
  if nums_array.length == 1
    nums_array[0]
  elsif nums_array.length > 1
    nums_array[0] + add_numbers(nums_array.drop(1))
  end
end

def gamma_fnc(num)
  if num == 0
    return
  elsif num >= 1
    factorial(num-1)
  end
end

def factorial(num)
  if num == 0
    return 1
  elsif num == 1
    return num
  elsif num > 1
    num * factorial(num-1)
  end
end

def ice_cream_shop(flavors, favorite)
  found = (flavors[0] == favorite)
  if flavors[0] == nil
    false
  elsif flavors[0] == favorite
    true
  else
    found || ice_cream_shop(flavors.drop(1), favorite)
  end

end

def reverse(string)
  if string.length == 0
    ""

  elsif string.length == 1
    "#{string[-1]}"

  else
    "#{string[-1]}#{reverse(string[0...-1])}"
  end

end
