fish_array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish(fish_array)
  sorted = false

  until sorted
    sorted = true
    (0...fish_array.length - 1).each do |i|
      if fish_array[i].length > fish_array[i+1].length
        fish_array[i], fish_array[i+1] = fish_array[i+1], fish_array[i]
        sorted = false
      end
    end
  end

  fish_array.last
  #amke run at o(n^2)
end

fish_array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
def dominant(fish_array)
  merge_sort(fish_array).last
end

def merge_sort(fish_array)
  return fish_array if fish_array.length <= 1
  mid_idx = fish_array.length / 2
  left = merge_sort(fish_array.take(mid_idx))
  right = merge_sort(fish_array.drop(mid_idx))

  merge_helper(left, right)

end

def merge_helper(left, right)
  result = []
  until left.empty? || right.empty?
    case left.first.length < right.first.length
    when true
      result << left.shift
    else
      result << right.shift
    end
  end

  result + left + right
end

fish_array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
def clever(fish_array)
  held_fish = fish_array.shift
  fish_array.each do |fish|
    held_fish = fish if fish.length > held_fish.length
  end

  held_fish
end



tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(move, tiles_array)
  steps = 0
  tiles_array.each do |tile|
    return steps if tile == move
    steps +=1
  end
end

new_tile_structure = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}

def fast_dance(move, new_tile_structure)
  new_tile_structure[move]
end

p sluggish(fish_array)
p dominant(fish_array)
p clever(fish_array)

p slow_dance("right-down", tiles_array)
p fast_dance("right-down", new_tile_structure)
