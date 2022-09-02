
def sluggish_octopus(arr)
    sorted = false
    while !sorted
        sorted = true
        arr.each_with_index do |el,i|
            if i != arr.length- 1 && arr[i].length > arr[i+1].length 
                arr[i], arr[i+1] = arr[i+1], arr[i]
                sorted = false
            end
        end
    end
    arr.last
end


def dominant_octopus(array)
    return array if array.length <= 1

    mid = array.length / 2

    left_arr = dominant_octopus(array[0...mid])
    right_arr = dominant_octopus(array[mid..-1])
    merge(left_arr, right_arr)
end

def merge(left, right)
    merged = []
    until left.empty? || right.empty?
        if left[0].length < right[0].length
            merged << left.shift
        else 
            merged << right.shift
        end
    end
    merged + left + right
end

def clever_octopus(arr)
    fish = arr.shift
    arr.each do |ele|
        if ele.length > fish.length
            fish = ele
        end
    end
    fish 
end
def slow_dance(command,arr)
    arr.each_with_index do |ele,i|
        return i if command == ele
    end
end
def const_dance(command, arr)
    arr.index(command)
end

# arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# p sluggish_octopus(arr) #=> "fiiiissshhhhhh"
# p dominant_octopus(arr)
# p clever_octopus(arr)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left", "left-up" ]
p slow_dance("up", tiles_array)

p slow_dance("right-down", tiles_array)

p const_dance("up", tiles_array) #0


p const_dance("right-down", tiles_array) #3
