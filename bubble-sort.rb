def bubble_sort(array)

is_sorted = false
  until is_sorted do
    is_sorted = true
    array.each_with_index do |elem, index|
      if !array[index+1] then break end
      if elem > array[index + 1]
        temp = array[index + 1]
        array[index + 1] = array[index]
        array[index] = temp
        is_sorted = false
      end
    end
  end
  array
end

p bubble_sort([3, 2, 1, 7, 1, 4, 48, 4, 6])