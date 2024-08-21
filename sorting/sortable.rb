module Sortable
  def bubble_sort(arr, debug=false)
    len = arr.length

    return arr if len <= 1

    (0...len).each do |i|
      (0...(len - i - 1)).each do |j|
        if arr[j] > arr[j + 1]
          temp = arr[j]
          arr[j] = arr[j + 1]
          arr[j + 1] = temp
        end
      end
    end
    arr
  end
end
# init = (1..10).to_a
# sample = init.shuffle
# puts "init: [#{sample.join(", ")}]"
# results = Sortable::bubble_sort(sample, true)
# puts "sorted: #{results}"
# puts init == results ? "Sorted" : "Not Sorted"
